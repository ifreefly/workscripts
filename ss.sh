#!/bin/bash

case "$1" in
    start)
        ssserver -p 8096 -k yourpassword -m aes-256-cfb --user nobody -d start
        ;;
    stop)
        ssserver -d stop
        ;;
    restart)
        $0 stop
        $0 start
        ;;
    *)
        echo "Usage:$0 {start|stop|restart}"
        ;;
esac