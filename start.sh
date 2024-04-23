#!/bin/bash
MAX_RAM="1500M"
MIN_RAM="500M"
JVM_ARGS="-XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=100 -XX:+DisableExplicitGC"
SERVER_JAR="paper.jar"
SERVER_ARGS=""

while true; do
    java -Xmx$MAX_RAM -Xms$MIN_RAM $JVM_ARGS -jar $SERVER_JAR $SERVER_ARGS
    echo "Server process crashed. Restarting..."
    sleep 1
done
