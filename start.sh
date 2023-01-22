#!/bin/bash
#adicionando funções ao bash
source docker-compose/functions.sh

#adicionando usuário ao grupo docker
user_docker

#iniciando banco de dados
bash boot.sh

#atualizando permissões
permissions_update

#sudo docker-compose up -d postgres

