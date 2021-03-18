#!/bin/bash
#
#installeerimine apache2 
#enne seda, kontroll kas apache2 on juba installitud
apache=$(dpkg --status apache2 | grep -c "ok installed")
# kui apache pole installitud ehk muutuja 0
if [ $apache -eq 0 ]; then
	echo "Toimub apache paigaldus"
	apt install apache2 -y
	echo "Apache on installeeritud"
#Kui apache on juba installitud ehk muutuja 1
elif [ $apache -eq 1 ]; then
	echo "apache2 on juba paigaldatud"
	#panen apache service tööle, annan teada et juba installitud
	service apache2 start
	service apache2 status
#lõpp tingimusel
fi
