#!/usr/bin/env bash
##
# This section should match your Makefile
##
PELICAN=pelican
PELICANOPTS=

BASEDIR=$(pwd)
INPUTDIR=$BASEDIR/content
OUTPUTDIR=$BASEDIR/output
CONFFILE=$BASEDIR/pelicanconf.py

###
# Don't change stuff below here unless you are sure
#
# Nate hacked this so that he can have Chrome auto-refresh any dev environment
# tabs in the background whenever he makes a change to the content/ directory.
###

SRV_PID=$BASEDIR/srv.pid
PELICAN_PID=$BASEDIR/pelican.pid
CHROMEWATCH_PID=$BASEDIR/chromewatch.pid

function usage(){
  echo "usage: $0 (stop) (start) (restart)"
  echo "This starts pelican in debug and reload mode and then launches"
  echo "A SimpleHTTP server to help site development. It doesn't read"
  echo "your pelican options so you edit any paths in your Makefile"
  echo "you will need to edit it as well"
  exit 3
}

function shut_down(){
  if [[ -f $SRV_PID ]]; then
    PID=$(cat $SRV_PID)
    PROCESS=$(ps -p $PID | tail -n 1 | awk '{print $4}')
    if [[ $PROCESS != "" ]]; then
      echo "Killing SimpleHTTPServer"
      kill $PID
    else
      echo "Stale PID, deleting"
    fi
    rm $SRV_PID
  else
    echo "SimpleHTTPServer PIDFile not found"
  fi

  if [[ -f $PELICAN_PID ]]; then
    PID=$(cat $PELICAN_PID)
    PROCESS=$(ps -p $PID | tail -n 1 | awk '{print $4}')
    if [[ $PROCESS != "" ]]; then
      echo "Killing Pelican"
      kill $PID
    else
      echo "Stale PID, deleting"
    fi
    rm $PELICAN_PID
  else
    echo "Pelican PIDFile not found"
  fi

  if [[ -f $CHROMEWATCH_PID ]]; then
      PID=$(cat $CHROMEWATCH_PID)
      PROCESS=$(ps -p $PID | tail -n 1 | awk '{print $4}')
    if [[ $PROCESS != "" ]]; then
      echo "Killing chromewatch"
      kill $PID
    else
      echo "Stale PID, deleting"
    fi
    rm $CHROMEWATCH_PID
  else
    echo "chromewatch PIDFile not found"
  fi

}

function start_up(){
  echo "Starting up Pelican and SimpleHTTPServer"
  shift
  $PELICAN --debug --autoreload -r $INPUTDIR -o $OUTPUTDIR -s $CONFFILE $PELICANOPTS &
  echo $! > $PELICAN_PID
  cd $OUTPUTDIR
  python -m SimpleHTTPServer 7999 &
  echo $! > $SRV_PID
  cd $BASEDIR

  # The Chrome-watching script depends on fswatch, so only run it if it's
  # installed.
  if command -v fswatch; then
      "$BASEDIR/chrome-watcher.sh" &
      echo $! > $CHROMEWATCH_PID
  fi

  sleep 1 && echo 'Pelican and SimpleHTTPServer processes now running in background.'
}

###
#  MAIN
###
[[ $# -ne 1 ]] && usage
if [[ $1 == "stop" ]]; then
  shut_down
elif [[ $1 == "restart" ]]; then
  shut_down
  start_up
elif [[ $1 == "start" ]]; then
  start_up
else
  usage
fi
