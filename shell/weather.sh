#!/bin/bash
#rm old output
hadoop fs -rm -r -f weather_output

hadoop fs -mkdir -p weather_input

hadoop fs -copyFromLocal /root/input/massiveData.txt weather_input/massiveData.txt


export HADOOP_CLASSPATH=/root/jars/ch02-mr-intro-4.0.jar
hadoop MaxTemperature weather_input/massiveData.txt weather_output

echo -e "\n result:"

hadoop fs -cat weather_output/part-r-00000

