#!/bin/bash
yum install docker

systemctl start docker

systemctl enable docker

curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Linux-x86_64" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

mkdir -p /root/nginx/

cat >  /root/nginx/default.conf<<"EOF"
${nginx_conf}
EOF

cat > /root/nginx/docker-compose.yml<<"EOF"
${docker_compose}
EOF

cd /root/nginx/

docker-compose up -d