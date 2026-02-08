#!/bin/sh

# /etc/apk/repositories
cat > /etc/apk/repositories << EOF
https://mirror.yandex.ru/mirrors/alpine/v3.23/main
https://mirror.yandex.ru/mirrors/alpine/v3.23/community
EOF

apk update
apk upgrade
apk add coreutils-env openldap-clients libldap powershell uwsgi-cgi uwsgi-ugreen
ln -s /usr/lib/libldap.so.2 /usr/local/lib/libldap-2.5.so.0.so
