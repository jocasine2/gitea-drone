#!/bin/bash
#adicionando funções ao bash
source docker-compose/functions.sh

#adicionando usuário ao grupo docker
user_docker

#atualizando permissões
permissions_update

docker-compose up -d

#ajustando app.ini
localhost_por_gitea docker-compose/gitea_data/gitea/conf/app.ini

docker-compose down && docker-compose up -d