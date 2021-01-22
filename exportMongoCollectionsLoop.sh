dbname=$(<db.config.txt)
echo "DB:"$dbname
value=$(<collection_names.txt)
echo "$value"
for collectionName in $value
do
 echo "${collectionName//\'}" 
 collection="${collectionName//\'}" 
 echo "Exporting Collection: $collection"
 echo "Command: mongoexport --collection=$collection --db=$dbname  --out=C:\$collection.json" 
 mongoexport --collection=$collection --db=$dbname  --out=$collection.json
 echo "Export Done, Check $collection.json"
done
   
