#!/usr/bin/bash

CITY=$1

CONTENT=$(curl -s https://wttr.in/${CITY}?format=j1)

echo "<HTML><BODY>"

echo "Local Observation DateTime:"
echo ${CONTENT} | jq '.["current_condition"][0] | .localObsDateTime'
echo "<br />"
echo "Current Temp:"
echo ${CONTENT} | jq '.["current_condition"][0] | .temp_C'
echo "<br />"
echo "Current Humidity:"
echo ${CONTENT} | jq '.["current_condition"][0] | .humidity'

echo "</BODY></HTML>"