#Creating some variables to make the docker run command more readable
#App jar environment used by the spark-submit image
$SPARK_APPLICATION_JAR_LOCATION="/opt/spark-apps/spark-demo.jar"
#App main class environment used by the spark-submit image
$SPARK_APPLICATION_MAIN_CLASS="net.yan.spark.Main"
#Extra submit args used by the spark-submit image
#SPARK_SUBMIT_ARGS="--conf spark.executor.extraJavaOptions='-Dconfig-path=/opt/spark-apps/dev/config.conf'"

#We have to use the same network as the spark cluster(internally the image resolves spark master as spark://spark-master:7077)
docker run --network spark-network -v ./apps:/opt/spark-apps --env SPARK_APPLICATION_JAR_LOCATION=$SPARK_APPLICATION_JAR_LOCATION --env SPARK_APPLICATION_MAIN_CLASS=$SPARK_APPLICATION_MAIN_CLASS spark-submit:latest