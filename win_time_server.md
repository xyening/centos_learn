1. 选择一台服务器作为时间同步服务器。
2. 运行Regedit，打开注册表编辑器。
3. 找到注册表项HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time\Config\，在右侧窗口中将AnnounceFlags的值修改为5。
4. 继续找到注册表项HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\NtpServer\，在右侧窗口中将Enabled的值修改为1。
5. 在命令行中输入”net stop w32time && net start w32time“重启W32Time服务。
6. 修改Windows防火墙设置，允许123端口的UDP连接。
