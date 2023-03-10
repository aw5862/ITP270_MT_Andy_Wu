#!/bin/bash

echo "Enter 'google.com' to ping:"
read Input

while [[ $Input != "google.com" ]]
do
	echo "you didn't type 'google.com', try again:"
	read Input
done

echo "Pinging $Input. Please wait..."
ping -c 5 $Input | cat > ping_result.txt
echo "Ping complete. Results written to ping_result.txt."
