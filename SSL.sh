#!/bin/bash

# what is SSL script ?
# so basically SSL is a simple script for securing linux
# and it uses some simple techniques and programs to secure your linux
apt install figlet
clear
figlet SSL
#++++++++++++++++++++++++++++++++++++++++++++++++
# made by arianchemist
echo "-------------------------------------------------"
echo "+*            made by arianchemist            *+"
echo "-------------------------------------------------"
#++++++++++++++++++++++++++++++++++++++++++++++++
echo "<><><><><><><><><><><><><><><><><><><><><><><><>"
echo "<><><><><><><><><><><><><><><><><><><><><><><><>"
echo "simple securing linux"
echo "this script is for securing your linux system"
echo "run as root"
echo "<><><><><><><><><><><><><><><><><><><><><><><><>"
echo "<><><><><><><><><><><><><><><><><><><><><><><><>"
#++++++++++++++++++++++++++++++++++++++++++++++++
echo "[=][=][=][=][=][=][=][=][=][=][=][=][=][=]"
echo "what do you wnat to run"
echo "pc = permission cleaner"
echo "ss = system scanner"
echo "ic = ip changer"
echo "mcm1 = mac changer method 1"
echo "mcm2 = mac changer method 2"
echo "[=][=][=][=][=][=][=][=][=][=][=][=][=][=]"
#------------------------------------------------
echo "---> "
read choosee
#++++++++++++++++++++++++++++++++++++++++++++++++
if [$choosee == "pc"]
then
#++++++++++++++++++++++++++++++++++++++++++++++++
echo "input file to clear permissions :->: "
read fillle
chmod u-x $fillle
chmod u-r $fillle
chmod u-w $fillle
#++++++++++++++++++++++++++++++++++++++++++++++++
elif [$choosee == "ss"]
then
mkdir results
cd results
apt install clamav
clear
clamscan -r / >> result.txt
#++++++++++++++++++++++++++++++++++++++++++++++++
elif [$choosee == "ic"]
then
echo "input new ip --> "
read ipp
echo "input your ethernet interface (like eth0 or eth1) --> "
read ethh
ifconfig $ethh $ipp
#++++++++++++++++++++++++++++++++++++++++++++++++
elif [$choosee == "mcm1"]
then
echo "input your ethernet interface (like eth0 or eth1) --> "
read ethhh
echo "input your new mac address --> "
read macc
ifconfig $ethhh down
ifconfig $ethhh hw ether $macc
ifconfig $ethhh up
#++++++++++++++++++++++++++++++++++++++++++++++++
elif [$choosee == "mcm2"]
then
apt install macchanger
clear
echo "input your ethernet interface (like eth0 or eth1) --> "
read ethhhh
ifconfig $ethhhh down
macchanger -r $ethhhh
ifconfig $ethhhh up
#++++++++++++++++++++++++++++++++++++++++++++++++
else
echo "invalid input"
fi
