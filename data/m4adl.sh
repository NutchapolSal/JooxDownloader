cd ./temp
cat * | tr , '\n' | grep 'm4aUrl' | sed 's/\"m4aUrl\":\"//' | sed 's/\"//' | grep http | sort | xargs wget -P ../tempdl
cd ../tempdl
mv * ../Downloads