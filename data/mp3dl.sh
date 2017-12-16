cd ./temp
cat * | tr , '\n' | grep 'r320Url' | sed 's/\"r320Url\":\"//' | sed 's/\"//' | grep http | sort | xargs wget -P ../tempdl
cd ../tempdl
mv * ../Downloads