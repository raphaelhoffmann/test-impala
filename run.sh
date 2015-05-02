#!/bin/bash

export DEEPDIVE_HOME=`pwd`/../deepdive
export APP_HOME=`pwd`
export DBNAME="testimpala"
export PGHOST="localhost"
export PGPORT="21050"
export PGUSER="$USER"
export PGPASSWORD=""
export TMP_DIR="/tmp/x"

DIRNAME=`dirname $0`

impala-shell -q "CREATE DATABASE IF NOT EXISTS ${DBNAME};"

cd $DEEPDIVE_HOME
export PYTHONPATH=$DEEPDIVE_HOME/ddlib:$PYTHONPATH

sbt/sbt "run -c $APP_HOME/${APP_CONF:-application.conf} -o ${TMP_DIR}"
