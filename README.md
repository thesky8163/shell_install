以下为示例  
The following is an example  
可在一个脚本内展示多个服务的安装进度，函数命名不要冲突  
The installation progress of multiple services can be displayed in one script, and the function naming shall not conflict  
使用方法，如安装 lnmp_cluster，只需要用函数把函数ok包起来以后，在脚本中多次调用lnmp名即可使用  
Use methods, for example to install LNMP_cluster, you only need to package the function OK with the function,Call LNMP name multiple times in the script to use  

lnmp () {ok;}  
lamp () {ok;}  
  
lamp_install () {  
lamp  
sleep 0.4  
echo 'install nginx'  
lamp  
sleep 0.4  
echo 'install myslq'  
lamp  
sleep 0.4  
echo 'install php'  
lamp  
sleep 0.4  
lamp  
sleep 0.4  
lamp  
sleep 0.4  
lamp  
sleep 0.4  
lamp  
}  
  
lnmp_install () {  
lnmp  
sleep 0.4  
lnmp  
sleep 0.4  
lnmp  
sleep 0.4  
echo 'install nginx'  
lnmp  
sleep 0.4  
echo 'install ansible'  
lnmp  
sleep 0.4  
echo 'install zabbix'  
lnmp  
sleep 0.4  
yum install -y aaaaa  
lnmp  
}  
  
lamp_install   
  
lnmp_install  
  
