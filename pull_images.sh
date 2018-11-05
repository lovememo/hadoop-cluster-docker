sudo docker login --username=hi31671296@aliyun.com registry.cn-hangzhou.aliyuncs.com
sudo docker pull registry.cn-hangzhou.aliyuncs.com/lovememo_2048/hadoop:1.1
sudo docker tag registry.cn-hangzhou.aliyuncs.com/lovememo_2048/hadoop:1.1 lovememo/hadoop:1.1
sudo docker rmi registry.cn-hangzhou.aliyuncs.com/lovememo_2048/hadoop:1.1
