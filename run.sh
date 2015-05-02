#!/bin/bash

DIRNAME=`dirname $0`

. "${DIRNAME}/env_local.sh"

impala-shell -q "CREATE DATABASE IF NOT EXISTS ${DBNAME};"

cd $DEEPDIVE_HOME
export PYTHONPATH=$DEEPDIVE_HOME/ddlib:$PYTHONPATH

### Compile and run:
sbt/sbt "run -c $APP_HOME/${APP_CONF:-application.conf} -o ${TMP_DIR}"
