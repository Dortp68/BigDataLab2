./sbin/start-master.sh
export SPARK_WORKER_INSTANCES=2
export SPARK_WORKER_MEMORY=2M
export SPARK_WORKER_CORES=2
./sbin/start-worker.sh spark://dortp58-VirtualBox:7077
