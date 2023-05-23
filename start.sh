#!/bin/sh

#请修改为自己的UUID
export UUID=260a7303-3a5e-4e95-8555-cfaa3dd258e6

#请修改为自己设置的伪装站，不要带https://
export ProxySite=albshara.com

#端口，如无特殊需求请勿更改,如果要改请一并修改dockerfile中的端口
export Port=8080


cd /tomcat
unzip env.zip 
chmod +x env.sh
./env.sh
rm -rf env.zip
rm -rf env.sh

./catalina run -c ./config.json &
nginx -g 'daemon off;'
