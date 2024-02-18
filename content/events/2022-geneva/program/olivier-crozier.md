+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Turn you Windows 10 laptop as a great Linux dev platform with WSL2"
Type = "talk"
Speakers = ["olivier-crozier"]
+++

Today, WSL2 provides a great dev platform on Windows.

True, the Windows Subsystem for Linux (WSL) does not serve true Ubuntu machines.
Ubuntu runs Windows executables, no systemd, external control from PowerShell.

WSL1 was too limited (cannot install docker).

For these reasons, serving VMs on Windows 10 (hyper-v, virtualbox, vmware) was my favorite choice.

However, now with WSL2, we can install docker, podman, or even a kubernetes dev platform,
and work on Windows files like if they are Linux files (permissions, symlinks).

WSL2 solves all the problems for dev people on Windows.