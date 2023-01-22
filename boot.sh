#!/usr/bin/env bash

export HOSTNAME=$(hostname)
export DRONE_VERSION=2
export DRONE_RUNNER_VERSION=1.6.3
export GITEA_VERSION=1.13
export IP_ADDRESS=localhost
export MINIO_ACCESS_KEY="EXAMPLEKEY"
export MINIO_SECRET_KEY="EXAMPLESECRET"
export GITEA_ADMIN_USER="example"
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${GITEA_ADMIN_USER},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
export DRONE_GITEA_CLIENT_ID="f3cc9eb8-9527-44a8-b0f5-b39cc8ed3527"
export DRONE_GITEA_CLIENT_SECRET="3jJLabiDNtRZwFn4Sslm7A0D4j3nXc0oRyTc48A7nqg="
docker-compose up -d --build

echo ""
echo "Gitea: http://${IP_ADDRESS}:3000/"
echo "Drone: http://${IP_ADDRESS}:3001/"
