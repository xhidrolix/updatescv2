#!/bin/bash

# Installing VNSTAT
clear
sleep 1
echo "Please Wait..."
sleep 4
echo "installing Update Script VnzVPN V2 Beta Version"
sleep 4
apt -y install vnstat > /dev/null 2>&1
/etc/init.d/vnstat restart
apt -y install libsqlite3-dev > /dev/null 2>&1
wget https://humdi.net/vnstat/vnstat-2.6.tar.gz
tar zxvf vnstat-2.6.tar.gz
cd vnstat-2.6
./configure --prefix=/usr --sysconfdir=/etc && make && make install
cd
vnstat -u -i $NET
sed -i 's/Interface "'""eth0""'"/Interface "'""$NET""'"/g' /etc/vnstat.conf
chown vnstat:vnstat /var/lib/vnstat -R
systemctl enable vnstat
/etc/init.d/vnstat restart
/etc/init.d/vnstat status
rm -f /root/vnstat-2.6.tar.gz
rm -rf /root/vnstat-2.6
sleep 4
echo "Installing Update Complete..."
sleep 2
echo "Thank you Has Been Use Script By VnzVPN"
sleep 3
rm -rf /root/fixcekbw.sh
clear
sleep 2

# installing new UI
echo "Please Wait..."
sleep 2
echo "Downloading Files Update..."
sleep 1
wget -q https://raw.githubusercontent.com/xhidrolix/updatescv2/main/menu
sleep 1
wget -q https://raw.githubusercontent.com/xhidrolix/updatescv2/main/menu-set
sleep 1
wget -q https://raw.githubusercontent.com/xhidrolix/updatescv2/main/menu-xray
sleep 2
clear
echo "Downloading Files Update Succesfuly..."
sleep 2
echo "Process Removing Old Files..."
rm -rf /usr/bin/menu
sleep 1
rm -rf /usr/bin/menu-set
sleep 1
rm -rf /usr/bin/menu-xray
sleep 3
echo "Process Removing Old Files Done..."
sleep 2
clear
sleep 2
echo "Process Moving New Files To Directory..."
sleep 2
mv /root/menu /usr/bin/
sleep 1
mv /root/menu-set /usr/bin/
sleep 1
mv /root/menu-xray /usr/bin/
sleep 2
echo "Process Moving New FIles Done..."
sleep 4
clear
sleep 1
echo "Process Setting Up Permission..."
sleep 3
chmod +x /usr/bin/menu
sleep 1
chmod +x /usr/bin/menu-set
sleep 1
chmod +x /usr/bin/menu-xray
sleep 2
echo "Process Setting Up Permission Done..."
sleep 2
clear
echo "Silakan Ketik Menu Untuk Melihat Update an Terbaru"
sleep 2
