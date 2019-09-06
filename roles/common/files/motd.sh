#!/bin/sh
#
# Text Color Variables http://misc.flogisoft.com/bash/tip_colors_and_formatting
tcLtG="\033[00;37m"    # LIGHT GRAY
tcDkG="\033[01;30m"    # DARK GRAY
tcLtR="\033[01;31m"    # LIGHT RED
tcLtGRN="\033[01;32m"  # LIGHT GREEN
tcLtBL="\033[01;34m"   # LIGHT BLUE
tcLtP="\033[01;35m"    # LIGHT PURPLE
tcLtC="\033[01;36m"    # LIGHT CYAN
tcW="\033[01;37m"      # WHITE
tcRESET="\033[0m"
tcORANGE="\033[38;5;209m"
#
# Time of day
HOUR=$(date +"%H")
if [ $HOUR -lt 12  -a $HOUR -ge 0 ]; then TIME="morning"
elif [ $HOUR -lt 17 -a $HOUR -ge 12 ]; then TIME="afternoon"
else TIME="evening"
fi
#
# System uptime
uptime=`cat /proc/uptime | cut -f1 -d.`
upDays=$((uptime/60/60/24))
upHours=$((uptime/60/60%24))
upMins=$((uptime/60%60))
MEMORY1=`free -t -m | grep "buffers/cache" | awk '{print $3" MB";}'`
MEMORY2=`free -t -m | grep "Mem" | awk '{print $2" MB";}'`
#
# System + Memory
SYS_LOADS=`cat /proc/loadavg | awk '{print $1}'`
SWAP_USED=`free -m | tail -n 1 | awk '{print $3}'`
NUM_PROCS=`ps aux | wc -l`
IPADDRESS=`hostname --all-ip-addresses`
#
echo $tcDkG "==================================================================="
echo $tcLtG " Good $TIME !                                       $tcORANGE IT Dept Ltd."
echo $tcDkG "==================================================================="
echo $tcLtG " - Hostname............:$tcW `hostname -f`"
echo $tcLtG " - IP Address..........:$tcW $IPADDRESS"
echo $tcLtG " - Release.............:$tcW $(lsb_release -s -d)"
echo $tcLtG " - Kernel..............: `uname -a | awk '{print $1" "$3" "$12}'`"
echo $tcLtG " - Users...............: Currently `users | wc -w` user(s) logged on"
echo $tcLtG " - Server Time.........: `date`"
echo $tcLtG " - System load.........: $SYS_LOADS / $NUM_PROCS processes running"
echo $tcLtG " - Memory used.........: $MEMORY1 / $MEMORY2"
echo $tcLtG " - Swap in use.........: $SWAP_USED MB"
echo $tcLtG " - System uptime.......: $upDays days $upHours hours $upMins minutes"
echo $tcDkG "==================================================================="
echo $tcRESET "