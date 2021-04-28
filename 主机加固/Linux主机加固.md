```
口令生存周期
文件位置:/etc/login.defs
PASS_MAX_DAYS 90 #密码最长过期天数
PASS_MIN_DAYS 10 #密码最小过期天数
PASS_WARN_AGE 7  #密码过期警告天数
PASS_MIN_LEN  8  #密码最小长度


口令复杂度
需要安装cracklib
password requisite pam_cracklib.so
password requisite pam_cracklib.so try_first_pass retr3 dcredit=-1
lcredic=-1 ucredic=-1 ocredit=-1 minlen=8

限制某某用户登录
/etc/hosts.deny
禁止192.168.1.1对服务器进行ssh登录
sshd:192.168.1.1

登录超时设置
cp -p /etc/profile /etc/profile_bak

vim /etc/profile

export TMOUT=300

7、检查是否使用PAM认证模块禁止wheel组之外的用户su为root

vim /etc/pam.d/su

auth    sufficient  pam_rootok.so（中间使用tab键隔开）
auth    required    pam_wheel.so use_uid（中间使用tab键隔开）

禁用无用帐号
passwd -l user #锁定不必要的帐号


