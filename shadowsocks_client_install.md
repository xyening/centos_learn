'''
yum install python-pip    

pip install shadowsocks

 

vim /etc/shadowsocks.json

 

{

    "server":"1.1.1.1",             #ss服务器IP

    "server_port":1035,             #端口

    "local_address": "127.0.0.1",   #本地ip

    "local_port":1080,              #本地端口

    "password":"password",          #连接ss密码

    "timeout":300,                  #等待超时

    "method":"rc4-md5",             #加密方式

    "fast_open": false,             # true 或 false。如果你的服务器 Linux 内核在3.7+，可以开启 fast_open 以降低延迟。开启方法： echo 3 > /proc/sys/net/ipv4/tcp_fastopen 开启之后，将 fast_open 的配置设置为 true 即可

    "workers": 1                    # 工作线程数

}
'''
'''
 nohup sslocal -c /etc/shadowsocks.json /dev/null 2>&1 &
//是shadowsocks后台运行

 然后加入开机自启动

 echo " nohup sslocal -c /etc/shadowsocks.json /dev/null 2>&1 &" /etc/rc.local

  

 查看后台进程

 [root@kcw ~]# ps aux |grep sslocal |grep -v "grep"

root      7587  0.1  0.1 184180  8624 pts/0    S    08:44   0:03 /usr/bin/python /usr/bin/sslocal -c /etc/shadowsocks.json /dev/null
'''
