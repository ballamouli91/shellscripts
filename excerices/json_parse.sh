: '
Write a shell script that does the following in sequence (on a *nix box)						
checkout code from github into folder /home/testuser/mycode 									
Assume there is a config.json file in the source code with a JSON structure {user: , api_key: ‘1234’ , conn_string: , ip_address: }.
Also assume that the values for the keys in this JSON come from variables $user,$api_key and so on. Assign these variables to the values of corresponding JSON keys ONLY if the value is empty string. So the config.json should now be populated with values [This step needn’t necessarily be in shell script, assume you have /usr/bin/ruby OR /usr/bin/python OR /usr/bin/java OR /usr/bin/node in PATH]
Change the ownership for all files on /home/testuser/mycode to username ‘testuser’ 									
Now archive this folder (.tar.gz), checksum and scp the archive to another machine that has dns ‘remote.test.com” (in location
/home/testuser/remotecode) . Assume that ‘testuser’ is part of sshlogin group on remote.test.com 									
Stop the service with name ‘node’  									
Move the archive to /user/node/data and unarchive the contents 									
Start the service with name ‘node’ 									
Check that the end point ‘http://remote.test.com/status’ returns code 200
'
#! /bin/bash
echo "Hello World"
# sudo yum install git 
# git clone https://github.com/exaaa /home/testuser/mycode
cd /home/testuser/mycode 
jq . config.json
user_value=`jq '. .user ' config.json`

echo $user_value

[[ $foo ]] || echo " user value is empty so updating the value with first argument" && jq --arg ssid user --arg pass $1 '.[$ssid] = $pass' config.json > tmp.$$.json && mv tmp.$$.json config.json

connection_string=`jq '. .conn_string ' config.json`

echo " value of con_string is $connection_string "

[[ $foo ]] || echo " user value is empty so updating the value with first argument" && jq --arg ssid conn_string --arg pass $2 '.[$ssid] = $pass' config.json > tmp.$$.json && mv tmp.$$.json config.json

ip=`jq '. .ip_address ' config.json`

echo " value of con_string is $ip "

[[ $foo ]] || echo " ip is empty so updating the value with third argument ..." && jq --arg ssid ip_address --arg pass $3 '.[$ssid] = $pass' config.json > tmp.$$.json && mv tmp.$$.json config.json

cmod +x $(pwd)
tar -zvcf filename.tar.gz $(pwd) | md5sum

ssh remote.test.com "/etc/init.d/node stop; scp filename.tar.gz localhost:/user/node/data; cd /user/node/data; tar -zxvf filename.tar.gz --strip-components=1; /etc/init.d/node start";status_code=$(curl --write-out %{http_code} --silent --output /dev/null http://remote.test.com/status);echo $status_code"

