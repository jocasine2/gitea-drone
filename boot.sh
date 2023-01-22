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
export DRONE_GITEA_CLIENT_ID="bdcce63b-48bd-4f6a-aeec-4db1e6d68f09"
export DRONE_GITEA_CLIENT_SECRET="SEvzQKBPF1Y6EmY_KYdZFEcqwK9v-oNnhzC51i09NPY="
docker-compose up -d --build

echo ""
echo "Gitea: http://${IP_ADDRESS}:3000/"
echo "Drone: http://${IP_ADDRESS}:3001/"
