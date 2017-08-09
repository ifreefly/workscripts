#!/bin/bash

kcp="kcpPath/server_linux_amd64"

case "$1" in
    start)
        ${kcp} -t "127.0.0.1:8080" -l ":1234" -mode fast2 -crypt "aes-192" -key "yourpassword" >/dev/null 2>&1 &
        ;;
    stop)
        pid=`ps -ef | grep server_linux_amd64 | grep -v grep |  awk '{print $2}'`
        kill -9 ${pid}
        ;;
    restart)
        $0 stop
        sleep 2
        $0 start
        ;;
    *)
        echo "Usage: $0 {start|stop|restart}"
        exit
esac