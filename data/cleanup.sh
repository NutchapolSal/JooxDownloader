cd ./temp
find . -type f -delete
cd ../Downloads
rename 's/\?.*//' *
cd ..
cp ./data/input.txt ./