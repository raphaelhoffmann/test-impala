# local MacOS setup
# jdbc:hive2://IMPALAD_HOST:IMPALAD_JDBC_PORT/;auth=noSasl

export DEEPDIVE_HOME=`pwd`/../deepdive
export APP_HOME=`pwd`
export MEMORY="8g"
export PARALLELISM=4
export DBNAME="testimpala"
export PGHOST="ec2-23-22-229-167.compute-1.amazonaws.com"
export PGPORT="21050"
export PGUSER="$USER"
export PGPASSWORD=""
export GPHOST=$PGHOST
export GPPORT=$PGPORT
export GPPATH=""
export TMP_DIR="/tmp/mmx"
export APP_CONF="application.conf"
