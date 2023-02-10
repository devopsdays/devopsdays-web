# This is a powershell version of change_sponsor_logo.sh
param (
    [Parameter(Mandatory=$true)][string]$SponsorName,
    [Parameter(Mandatory=$true)][string]$NewLogoFilePath
)

if([System.IO.Path]::GetExtension($NewLogoFilePath) -ne '.png')
{
    write-host "Logos must be in png format"
    exit 1
}
$CurrentDate = get-date -format "yyyyMMdd"
$CurrentYear = get-date -format "yyyy"
write-host $CurrentDate
write-host $CurrentYear
$gitroot = git rev-parse --show-toplevel
write-host $gitroot

if ($gitroot -eq "")
{
    write-host "Not a git repository or git is not installed."
    exit 1
}
if (-not(Test-Path $NewLogoFilePath)) {
    Write-host "Cannot find new logo, please specify the full path to the new logo."
}

if(-not(Test-Path "$gitroot/static/img/sponsors/$SponsorName.png"))
{
    write-host "Sponsor image does not exist"
    exit 1
}
else {
    $image_path = "$gitroot/static/img/sponsors/$SponsorName.png"
}

if(-not(Test-Path "$gitroot/data/sponsors/$SponsorName.yml"))
{
    write-host "Sponsor definition yml file does not exist"
    exit 1
}
else {
    $sponsor_path = "$gitroot/data/sponsors/$SponsorName.yml"
}

# Start by copying the existing definitions as the "old" definitions

$old_image_file = "$gitroot/static/img/sponsors/$SponsorName-before-$CurrentDate.png"
$old_sponsor_file = "$gitroot/data/sponsors/$SponsorName-before-$CurrentDate.yml"

### debugging
# write-host $old_image_file
# Write-Host $old_sponsor_file
if(Test-Path $old_image_file)
{
    write-host "$old_image_file already exists, please verify that this utility hasn't already been run."
    write-host "If it hasn't been, you will need to clean up the before file logo"
}
else {
    Copy-Item $image_path $old_image_file
}

if(Test-Path $old_sponsor_file)
{
    write-host "$old_sponsor_file already exists, please verify that this utility hasn't already been run."
    write-host "If it hasn't been, you will need to clean up the before file sponsor yml"
}
else {
    Copy-Item $sponsor_path $old_sponsor_file
}

Copy-Item $NewLogoFilePath $image_path

# Now it's time to find all the files that have the sponsor in it.
# However, we need to skip anything that already has before in the name
# Or anything from this year.
write-host "$gitroot/data/events"

$SponsorFilesNotCurrentYear = Get-ChildItem -Path "$gitroot/data/events" -Exclude "${CurrentYear}*"

$FoundSponsorFiles = foreach ($f in $SponsorFilesNotCurrentYear) {select-string -Path $f.FullName -Pattern "id: ${SponsorName}" | select-string -pattern "before" -NotMatch}

foreach($file in $FoundSponsorFiles)
{
    try
    {
        $filePath = $file.Path
        # write-host "Modifying ${filePath}"
        $getFileContent = Get-Content -Path ${filePath}
        $updateFile = $getFileContent -replace "id: ${SponsorName}", "id: ${SponsorName}-before-${CurrentDate}"
        $updateFile | Set-Content -Path ${filePath}
    }
    catch {
        $filePath = $file.Path
        write-host "Error modifying file ${filePath}"
    }
}

# Now to update any archived events
$SponsorArchiveFiles = Get-ChildItem -Path "$gitroot/static/events" -Recurse -File

$FoundArchiveSponsorFiles = foreach ($af in $SponsorArchiveFiles) {select-string -Path $af.FullName -Pattern "sponsors/${SponsorName}.png"}

foreach($archive in $FoundArchiveSponsorFiles)
{
    try {
        $archivePath = $archive.Path
        # write-host "Modifying ${archivePath}"
        $getArchiveFile = Get-Content -Path $archivePath
        $updateArchiveFile = $getArchiveFile -replace "sponsors/${SponsorName}.png", "sponsors/${SponsorName}-before-${CurrentDate}.png"
        $updateArchiveFile | Set-Content -Path $archivePath
    }
    catch {
        write-host "Error modifying file ${archivePath}"
    }
}