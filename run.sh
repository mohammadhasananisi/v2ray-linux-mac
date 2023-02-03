#! /bin/bash
echo "Starting set config";
sudo networksetup -setsocksfirewallproxy wi-fi 127.0.0.1 17687
sudo networksetup -setsocksfirewallproxystate wi-fi on

sudo networksetup -setwebproxy wi-fi 127.0.0.1 8080
sudo networksetup -setwebproxystate wi-fi on

sudo networksetup -setsecurewebproxy wi-fi 127.0.0.1 8080
sudo networksetup -setsecurewebproxystate wi-fi on

sudo networksetup -setproxybypassdomains wi-fi *.local 127.0.0.1 localhost 192.168.0.0/16 10.0.0.0/8 FE80::/64 ::1 FD00::/8

sudo sslocal -c ./config.conf


echo "Off Socks5 proxy";
sudo networksetup -setsocksfirewallproxystate wi-fi off
sudo networksetup -setproxybypassdomains wi-fi Empty
sudo networksetup -setwebproxystate wi-fi off
sudo networksetup -setsecurewebproxystate wi-fi off
