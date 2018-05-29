Netfilter - POLIMI
================
fork from https://github.com/rops/netfilter-stringscleaner.git

Netfilter kernel module that search for given string in packet's payload and replace it with an other specified string.

## FIX
* Fix newer version kernel support
* Change string long to 64

## Usage
``` bash
iptables -v -t mangle -A OUTPUT -p tcp --dport 80 -j POLIMI --findstring baidu --replacestring google
iptables -v -t mangle -A INPUT  -p tcp -j POLIMI --findstring baidu --replacestring google
```
