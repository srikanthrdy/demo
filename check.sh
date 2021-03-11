i=0;
while [ $i -lt 10 ];  do
#       echo $i

        response=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:1123/)
        echo $response
        if [ "$response" == "200" ]
        then
        exit 
        fi
        sleep 5
        i=$(( i+1 ))
done
echo $response
	if [ "$response" != "200" ]
        then
	echo "error"	
        exit 1
        fi
