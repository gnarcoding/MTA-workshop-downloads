#!/bin/bash

# Base URL
BASE_URL="https://www.malware-traffic-analysis.net/2019/sharkfest/sf19us-MTA-lab-"

# https://www.malware-traffic-analysis.net/2019/sharkfest/sf19us-MTA-lab-01.pcap.zip
# Loop from 1 to 16
for i in $(seq -w 1 16); do
    FILE_NAME="${i}.pcap.zip"
    URL="${BASE_URL}${FILE_NAME}"
    echo "Downloading: $URL"
    wget "$URL"
done
