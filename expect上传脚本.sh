#!/bin/bash
#upload remote host
#set password 'xxxxxxx'
spawn scp -r /root/.jenkins/workspace/xxx-service/xxx-service/target/xxx-service.jar root@xx.xx.xx.xx:/usr/local/service/xx-service.jar
#set timeout 3
#执行密码登陆
#expect {
#"yes/no" {send "yes\r";exp_continue}
#}
#expect "root@xx.xx.xx.xx's password:"
#set timeout 3
#send "$password\r"

#配置弓公钥之后，使用生成公钥的提示密码直接登陆
expect "Enter passphrase for key '/root/.ssh/id_rsa':"
set timeout 1
send "mengqizhang\r"
#此处设置超时时间，单位为秒，如果，拷贝文件比较大并且多时，应该将这个值调大一些。
set timeout 2
send "exit\r"
#interact
expect eof
