#!/bin/bash

fun_init='fun_init'

shell_install () {
if [ $result -ne 0 ];then
    line=$(grep -nw "${FUNCNAME[2]}" $0|sed -n "$[$n+1]"p|awk -F ':' '{print $1}')
    code=$(sed -n "$[$line-1]"p "$0")
    echo -e "\033[31m -------------------Install error lines:  $[$line-1]-------------------\033[0m"
    echo -e "\033[31m Install failed code:  $code \033[0m"
    exit $n
fi
    total=$(grep -ncw "${FUNCNAME[2]}" $0)
    let degree=($n*100)/"($total-1)"
    let degree_value=$degree*60/100
    image="===========================================================>"
    image_value="${image:(-$degree_value)}"
    printf "\e[1;3;33m"${FUNCNAME[2]}" install progress[%-60s]%d%%\n\e[0m" $image_value $degree
let n++
}

ok () {
    result=$?
if [ "$fun_init" != "${FUNCNAME[1]}" ];then
    n=1
    fun_init=${FUNCNAME[1]}
fi 
    shell_install
}

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# 以下为示例
# The following is an example
# 可在一个脚本内展示多个服务的安装进度，函数命名不要冲突
# The installation progress of multiple services can be displayed in one script, and the function naming shall not conflict
# 使用方法，如安装LNMP，只需要用函数把函数ok包起来以后，在脚本中多次调用LNMP名即可使用
# Use methods, for example to install LNMP, you only need to package the function OK with the function,Call LNMP name multiple times in the script to use
# new_funcname () { ok; }
# new_funcname
# 执行脚本会显示 new_funcname的安装进度条
# Executing the script will display the new funcname's installation progress bar

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


