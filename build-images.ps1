docker build -t yanleaon/spark-base:latest ./docker/base
docker build -t yanleaon/spark-master:latest ./docker/spark-master
docker build -t yanleaon/spark-worker:latest ./docker/spark-worker
docker build -t yanleaon/spark-submit:latest ./docker/spark-submit