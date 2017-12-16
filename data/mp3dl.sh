cd ./temp
cat * | tr , '\n' | grep 'r320Url' | sed 's/\"r320Url\":\"//' | sed 's/\"//' | grep http | sort | xargs wget -P ../tempdl
cd ../tempdl
find . -type f -exec mv '{}' '{}'.mp3 \;
mv * ../Downloads