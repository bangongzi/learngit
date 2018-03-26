#!/bin/bash

#"Please give the ip or domain name to ping, like ./pingHelp.sh www.sina.com
#	     The default is 'www.baidu.com' "

if test $# -eq 1
then
	ping ${1} -c 4| grep rtt| cut -d '/' -f 5
else
	echo "Please give the ip or domain name to ping, like ./pingHelp.sh www.sina.com
	     The default is 'www.baidu.com' "
	ping www.baidu.com -c 4| grep rtt| cut -d '/' -f 5
fi