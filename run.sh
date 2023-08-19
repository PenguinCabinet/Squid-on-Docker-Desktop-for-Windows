service squid stop
ps aux | grep squid | grep -v grep | awk '{ print "kill -9", $2 }' | sh

squid -N