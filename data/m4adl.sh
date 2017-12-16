cd ./temp
cat * | tr , '\n' | grep 'r192Url' | sed 's/\"r192Url\":\"//' | sed 's/\"//' | grep http | sort | xargs wget -P ../tempdl
cd ../tempdl
find . -type f -exec mv '{}' '{}'.m4a \;
mv * ../Downloads