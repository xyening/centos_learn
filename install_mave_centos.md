
### 下载并解压并设为共享

``` 
wget http://mirrors.hust.edu.cn/apache/maven/maven-3/3.5.2/binaries/apache-maven-3.5.2-bin.tar.gz
tar -zxvf apache-maven-3.5.2-bin.tar.gz -C /usr/local
cd /usr/local
sudo ln -s apache-maven-3.5.2 maven
```

### 设置环境变量

```
export M3_HOME=/usr/local/maven
export M3=$M3_HOME/bin
PATH=$M3:$PATH
```

# 测试一下
```
mvn -version
```
