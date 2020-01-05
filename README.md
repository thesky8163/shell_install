#### Usage method  
#### new_funcname_01 () { ok; }  
#### new_funcname_01  
#### 执行脚本会显示 new_funcname_01的安装进度条，可定义多个新函数,定义时函数名不能冲突  
#### Executing the script will display the installation progress bar of new funcname, which can define multiple new functions, function name cannot conflict when defining  
####   
#### 以下为示例  
#### The following is an example  

  
lnmp () { ok; }  
lamp () { ok; }  
  
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

  
lamp_install   

  
