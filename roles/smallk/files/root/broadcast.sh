#!/bin/ash
ipaddress=`ifconfig wlan0 | grep 'inet addr:' | cut -d: -f2 | cut -d\  -f1`;
i=1
while read line ; do
	local "config$i=$line";
	i=$((i+1));
done < /www/cgi-bin/config
json="{\"source\":\"kankun-plug\",\"uuid\":\"$config1\",\"name\":\"$config2\",\"group\":\"$config3\",\"ip\":\"$ipaddress\"}"
echo $json | socat - UDP-DATAGRAM:255.255.255.255:9600,broadcast
