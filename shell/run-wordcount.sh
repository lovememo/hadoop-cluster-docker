#!/bin/bash

# test the hadoop cluster by running wordcount

# create input files 
mkdir /root/input
echo "Hello Docker" >/root/input/file2.txt
echo "Hello Hadoop" >/root/input/file1.txt

# create input directory on HDFS
hadoop fs -mkdir -p word_count_input
hadoop fs -rm -r -f word_count_output
# put input files to HDFS

hdfs dfs -put /root/input/file1.txt word_count_input
hdfs dfs -put /root/input/file2.txt word_count_input

# run wordcount 
hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/sources/hadoop-mapreduce-examples-2.7.2-sources.jar org.apache.hadoop.examples.WordCount word_count_input word_count_output

# print the input files
echo -e "\ninput file1.txt:"
hdfs dfs -cat word_count_input/file1.txt

echo -e "\ninput file2.txt:"
hdfs dfs -cat word_count_input/file2.txt

# print the output of wordcount
echo -e "\nwordcount output:"
hdfs dfs -cat word_count_output/part-r-00000

