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

# Usage method
# new_funcname_01 () { ok; }
# new_funcname_01
# 执行脚本会显示 new_funcname_01的安装进度条，可定义多个新函数,定义时函数名不能冲突
# Executing the script will display the installation progress bar of new funcname, which can define multiple new functions, function name cannot conflict when defining
