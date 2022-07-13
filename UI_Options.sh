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

wget -N --no-check-certificate https://raw.githubusercontent.com/solehpolysas/xxxprojectxxx/main/Network-Reinstall-System-Modify.sh?token=GHSAT0AAAAAABWRQX6HETAZSPOLQN6P5MZYYWOB5TA && chmod a+x Network-Reinstall-System-Modify.sh

echo -e "\n\n\n"
clear
echo -e "\n"
echo "                                                           "
echo "================================================================"
echo "=                                                              ="
echo "=           一键网络重装系统 - 魔改版（图形化安装）            ="
echo "=        Network-Reinstall-System-Modify (Graphical Install)   ="
echo "=                                                              ="
echo "=             V4.0.8             https://www.cxthhhhh.com      ="
echo "=                                                              ="
echo "================================================================"
echo "                                                                "
echo "您想安装哪个系统(Which System want to Install):"
echo "                                                                "
echo "                                                                "
echo "  11) Latest 【CentOS 8】(Recommend)"
echo "  12) Latest 【CentOS 7】"
echo "                                                                "
echo "  21) Latest 【Debian 10】(Recommend)"
echo "  22) Latest 【Debian 9】"
echo "                                                                "
echo "  31) Latest 【Ubuntu 20.04】(Recommend)"
echo "  32) Latest 【Ubuntu 18.04】"
echo "                                                                "
echo "================================================================"
echo "                                                                "
echo -n "Enter the System Identification Nnumber (for example: 00)"
read Num
case $Num in
  00) bash Network-Reinstall-System-Modify.sh -CXT_Bare-metal_System_Deployment_Platform ;;

  11) bash Network-Reinstall-System-Modify.sh -CentOS_8 ;;
  12) bash Network-Reinstall-System-Modify.sh -CentOS_7 ;;

  21) bash Network-Reinstall-System-Modify.sh -Debian_10 ;;
  22) bash Network-Reinstall-System-Modify.sh -Debian_9 ;;

  31) bash Network-Reinstall-System-Modify.sh -Ubuntu_20.04 ;;
  32) bash Network-Reinstall-System-Modify.sh -Ubuntu_18.04 ;;

  *) echo "Wrong input, please enter again!" ;;
esac
