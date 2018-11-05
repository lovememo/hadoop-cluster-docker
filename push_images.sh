sudo docker login --username=hi31671296@aliyun.com registry.cn-hangzhou.aliyuncs.com
sudo docker tag lovememo/hadoop:1.1 registry.cn-hangzhou.aliyuncs.com/lovememo_2048/hadoop:1.1
sudo docker push registry.cn-hangzhou.aliyuncs.com/lovememo_2048/hadoop:1.1
sudo docker rmi registry.cn-hangzhou.aliyuncs.com/lovememo_2048/hadoop:1.1
