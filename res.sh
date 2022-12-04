#!/bin/bash
CYAN='\e[0;36m'
GREEN='\e[0;32m'
NC='\e[0;37m'
echo -e "$yell[SERVICE]$NC Restart All service"
systemctl daemon-reload
sleep 1
echo -e "[ ${GREEN}ok${NC} ] Enable & restart xray "
systemctl enable xray
systemctl restart xray
systemctl restart nginx
systemctl enable runn
systemctl restart runn
echo -e "${CYAN} Siap Mase.. "
cd