#!/bin/bash
while [ $# -gt 1 ]
do
case $1 in
-a) ip=$2
shift 2
;;
-p) port=$2
shift 2
;;
*) echo "unrecognized arguments"
;;
esac
done
echo "Address:$ip and port: $port"