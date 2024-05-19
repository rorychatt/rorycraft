MAX_RAM="4000M"
MIN_RAM="2500M"

JVM_ARGS="-XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=100 -XX:+DisableExplicitGC"
SERVER_JAR="paper.jar"
SERVER_ARGS=""

while true; do
    echo "Waiting for 5 seconds before starting the server..."
    sleep 5  # Wait for 5 seconds
    java -Xmx$MAX_RAM -Xms$MIN_RAM $JVM_ARGS -jar $SERVER_JAR $SERVER_ARGS
    echo "Server process crashed. Restarting..."
    sleep 1
done
