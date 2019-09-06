# !/bin/bash
iptables-save | sudo tee /etc/sysconfig/iptables warn=no
