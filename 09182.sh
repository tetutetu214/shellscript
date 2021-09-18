#!/bin/sh

USER="ec2-user"
NAME="Unicorn"
ENV="production"

ROOT_DIR="/var/www/application"

PID="${ROOT_DIR}/tmp/pids/unicorn.pid"
CONF="${ROOT_DIR}/config/unicorn.rb"
OPTIONS=""
CMD="RAILS_SERVE_STATIC_FILES=1 unicorn_rails -c ${CONF} -E ${ENV} -D"

start()
{
  if [ -e $PID ]; then
    echo "$NAME already started+${PID}"
    exit 1
  fi
  echo "start $NAME"
  su - ${USER} -c "cd ${ROOT_DIR} && ${CMD}"
}

stop()
{
  if [ ! -e $PID ]; then
    echo "$NAME not started"
    exit 1
  fi
  echo "stop $NAME"
  kill -QUIT `cat ${PID}`
}

force_stop()
{
  if [ ! -e $PID ]; then
    echo "$NAME not started"
    exit 1
  fi
  echo "stop ${NAME}"
  echo ${PID}
  kill -INT `cat ${PID}`
}

reload()
{
  if [ ! -e $PID ]; then
    echo "$NAME not started"
    start
    exit 0
  fi
  echo "reload $NAME"
  ##kill -HUP `cat ${PID}`
  su - $USER -c "cd ${ROOT_DIR} && bundle exec unicorn_rails:reload"
  ## su $USER -lc "cd ${RAILS_ROOT}&& bundle exec rake unicorn_rails:reload"
}

restart()
{
  force_stop
  sleep 5
  start
}


case "$1" in
  start)
    start
    ;;
  stop)
    stop
    ;;
  force-stop)
    force_stop
    ;;
  reload)
    reload
    ;;
  restart)
    restart
    ;;
  *)
    echo "Syntax Error: release [start|stop|force-stop|reload|restart]"
    ;;
esac