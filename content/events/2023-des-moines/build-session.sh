FILE_NAME="pete-anderson"
REAL_NAME="Pete Anderson"

cp ./speakers/_template.md ./speakers/$FILE_NAME.md && cp ./program/_template.md ./program/$FILE_NAME.md

sed -i '' "s/FILE_NAME/$FILE_NAME/g" ./program/$FILE_NAME.md

sed -i '' "s/FILE_NAME/$FILE_NAME/g" ./speakers/$FILE_NAME.md
sed -i '' "s/REAL_NAME/$REAL_NAME/g" ./speakers/$FILE_NAME.md
# tgifford@182-XY975G99M1-tgifford 2023-des-moines % code ./speakers/lara-newsom.md && code ./program/lara-newsom.md 

