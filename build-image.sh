#!/bin/bash

echo ""

echo -e "\nbuild docker hadoop image\n"
sudo docker rmi lovememo/hadoop:1.1
sudo docker build -t lovememo/hadoop:1.1 .

echo ""

