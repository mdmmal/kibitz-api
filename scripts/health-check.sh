#!/bin/bash

#intialize the healthpoint url
endPoint="http://localhost:3000/health"

#intialize var to fetch the url but only get the status code
statusCode=$(curl -s -o /dev/null -w "%{http_code}\n" "$endPoint")
#intialize timetamp to see the time the request took
timeStamp=$(curl -s -o /dev/null -w "%{time_total}\n" "$endPoint")

#decision for what to print for a pass or fail health check
if [ "$statusCode" = 200 ]; then
	echo "[OK]" "$timeStamp"
else
	echo "[FAIL]" "$statusCode" "$timeStamp"
fi

