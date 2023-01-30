#!/bin/bash

## License: GPL
## This is the magically modified version of the one-click reload script.
## It can reinstall CentOS, Debian, Ubuntu and other Linux systems (continuously added) over the network in one click.
## It can reinstall Windwos 2003, 7, 2008R2, 2012R2, 2016, 2019 and other Windows systems (continuously added) via the network in one click.
## Support GRUB or GRUB2 for installing a clean minimal system.
## Technical support is provided by the CXT (CXTHHHHH.com). (based on the original version of Vicer)

## Magic Modify version author:
## Default root password: cxthhhhh.com
## WebSite: https://www.cxthhhhh.com
## Written By CXT (CXTHHHHH.com)

## Original version author:
## Blog: https://moeclub.org
## Written By Vicer (MoeClub.org)


echo -e "\n\n\n"
clear
echo -e "\n"
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[33m 一键网络重装系统 - 魔改版 版本：V4.0.10 更新：2021年04月16日 \033[0m"
echo -e "\033[33m Network-Reinstall-System-Modify Tools V4.0.10 2021/04/16 \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[33m 一键网络重装系统 - 魔改版（适用于Linux / Windows） \033[0m"
echo -e "\033[33m 系统需求: 任何带有GRUB或GRUB2的Linux操作系统即可运行, 当前推荐安装的系统为： CentOS8/Debian10/Ubuntu20 \033[0m"
echo -e "\n"
echo -e "\033[33m [Magic Modify] Reinstall the system (any Windows / Linux) requires only network and one click \033[0m"
echo -e "\033[33m System requirements: Any Linux system with GRUB or GRUB2, recommended CentOS8/Debian10/Ubuntu20 \033[0m"
echo -e "\n"
echo -e "\033[33m 官方更新地址（Official update address）：CXT - Enjoy Life | 生活、技术、交友、分享 \033[0m"
echo -e "\033[33m https://www.cxthhhhh.com/Network-Reinstall-System-Modify \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"
echo " 默认密码: cxthhhhh.com"
echo " Default password: cxthhhhh.com"
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\n"
sleep 6s

echo "---------------------------------------------------------------------------------------------------------------------"
echo " 对当前系统环境进行处理. . ."
echo " Pre-environment preparation. . ."
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\n"
sleep 2s

if [ -f "/usr/bin/apt-get" ];then
	isDebian=`cat /etc/issue|grep Debian`
	if [ "$isDebian" != "" ];then
		echo '当前系统 是 Debian'
		echo 'Current system is Debian'
		apt-get install -y xz-utils openssl gawk file wget curl
		apt install -y xz-utils openssl gawk file wget curl
		sleep 3s
	else
		echo '当前系统 是 Ubuntu'
		echo 'Current system is Ubuntu'
		apt-get install -y xz-utils openssl gawk file wget curl
		apt install -y xz-utils openssl gawk file wget curl
		sleep 3s
	fi
else
    echo '当前系统 是 CentOS'
    echo 'Current system is CentOS'
    yum install -y xz openssl gawk file wget curl
    sleep 3s
fi

echo "---------------------------------------------------------------------------------------------------------------------"
echo " 对当前系统环境进行处理. . .  【OK】"
echo " Pre-environment preparation. . .  【OK】"
echo -e "\n"
echo " 启动系统安装. . . "
echo " Start system installation. . . "
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\n"
sleep 2s


echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[35m 启动 安装 \033[0m"
echo -e "\033[32m Start Installation \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\n"


if [ $1 = '-UI_Options' ]
then
	echo -e "\033[33m 你选择启动到 【图形化安装界面】 正在进入图形化安装选择器. . . \033[0m"
	echo -e "\033[33m You have chosen to Start the Graphical Interface Options, Wait a moment. . . \033[0m"
	echo -e "\n"
	sleep 1s
	wget --no-check-certificate -qO UI_Options.sh 'https://raw.githubusercontent.com/solehpolysas/xxxprojectxxx/main/UI_Options.sh?token=GHSAT0AAAAAABWRQX6GWETDZSHB5UDULWRYYWOBVNQ' && bash UI_Options.sh
fi

if [ $1 = '-CentOS_8' ]
then
	echo -e "\033[33m 你选择安装 最新的 【CentOS 8】 \033[0m"
	echo -e "\033[33m You have chosen to install the latest CentOS_8 \033[0m"
	echo -e "\n"
	sleep 5s
	wget --no-check-certificate -qO Core_Install.sh 'https://raw.githubusercontent.com/solehpolysas/xxxprojectxxx/main/Core_Install_v3.1.sh?token=GHSAT0AAAAAABWRQX6HQHXFAG42UCVVJHHCYWOBW4Q' && bash Core_Install.sh -dd 'https://odc.cxthhhhh.com/SyStem/CentOS/CentOS_8.X_NetInstallation_Stable_v3.6.vhd.gz'
fi

if [ $1 = '-Debian_10' ]
then
	echo -e "\033[33m 你选择安装 最新的 【Debian 10】 \033[0m"
	echo -e "\033[33m You have chosen to install the latest Debian_10 \033[0m"
	echo -e "\n"
	sleep 5s
	wget --no-check-certificate -qO Core_Install.sh 'https://raw.githubusercontent.com/solehpolysas/xxxprojectxxx/main/Core_Install_v3.1.sh?token=GHSAT0AAAAAABWRQX6HQHXFAG42UCVVJHHCYWOBW4Q' && bash Core_Install.sh -d 10 -v 64 -a
fi

if [ $1 = '-Debian_9' ]
then
	echo -e "\033[33m 你选择安装 最新的 【Debian 9】 \033[0m"
	echo -e "\033[33m You have chosen to install the latest Debian_9 \033[0m"
	echo -e "\n"
	sleep 5s
	wget --no-check-certificate -qO Core_Install.sh 'https://raw.githubusercontent.com/solehpolysas/xxxprojectxxx/main/Core_Install_v3.1.sh?token=GHSAT0AAAAAABWRQX6HQHXFAG42UCVVJHHCYWOBW4Q' && bash Core_Install.sh -d 9 -v 64 -a
fi

if [ $1 = '-Ubuntu_20.04' ]
then
	echo -e "\033[33m 你选择安装 最新的 【Ubuntu 20.04】 \033[0m"
	echo -e "\033[33m You have chosen to install the latest Ubuntu_20.04 \033[0m"
	echo -e "\n"
	sleep 5s
	wget --no-check-certificate -qO Core_Install.sh 'https://raw.githubusercontent.com/solehpolysas/xxxprojectxxx/main/Core_Install_v3.1.sh?token=GHSAT0AAAAAABWRQX6HQHXFAG42UCVVJHHCYWOBW4Q' && bash Core_Install.sh -u 20.04 -v 64 -a
fi

if [ $1 = '-Ubuntu_18.04' ]
then
	echo -e "\033[33m 你选择安装 最新的 【Ubuntu 18.04】 \033[0m"
	echo -e "\033[33m You have chosen to install the latest Ubuntu_18.04 \033[0m"
	echo -e "\n"
	sleep 5s
	wget --no-check-certificate -qO Core_Install.sh 'https://raw.githubusercontent.com/solehpolysas/xxxprojectxxx/main/Core_Install_v3.1.sh?token=GHSAT0AAAAAABWRQX6HQHXFAG42UCVVJHHCYWOBW4Q' && bash Core_Install.sh -u 18.04 -v 64 -a
fi

echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[35m 启动 安装 \033[0m"
echo -e "\033[32m Start Installation \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\n"
exit