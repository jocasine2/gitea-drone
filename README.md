<p align="center"><a href="https://rubyonrails.org/" target]="_blank"><img src="https://user-images.githubusercontent.com/38539884/217832257-47165ea3-9196-4586-8f53-12470cb4c2ed.png" width="400"></a></p>

<h1 align="center">Gitea + Drone CI no Docker!</h1>

# Iniciando ambiente de desenvolvimento
1 - Se estiver em ambiente Windows instale o Ubuntu como subsistema através do [WSL2](https://www.youtube.com/watch?v=_Wp2nWtTBBY).

2 - Instale o [Docker Desktop](https://www.docker.com/products/docker-desktop) (Windows) ou [Docker](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04) (Ubuntu) e o [Docker Compose](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-20-04).

2 - Carregue algumas funções úteis e inicie os containers.
```
source start.sh
```
## Adicionando hosts gitea.test e drone.test

3 - Adicione os novos hosts a lista de hosts confiáveis
no Windows em "C:\Windows\System32\drivers\etc\hosts"
no Linux em "/etc/hosts"
adicione as linhas:
```
127.0.0.1   gitea.test
127.0.0.1   drone.test	
```
5 - Acesse o GITEA em [http://gitea.test:3000](http://gitea.test:3000).

## Crie um aplicativo no drone 
http://gitea.test:3000/user/settings/applications/oauth2

Nome do aplicativo: Drone
Redirecionar URI: http://gitea.test/login

guarde o Client ID e o Client Secret 
faça logof no gitea (Sair)
## Configure o drone
em docker-compose.yml

DRONE_GITEA_CLIENT_ID = Client ID da aplicação criada no gitea
DRONE_GITEA_CLIENT_SECRET = Client Secret da aplicação criada no gitea

novamente 
```
source start.sh
```
para reiniciar os containers e aplicar as alterações ao drone

6 - Acesse o Drone em [http://localhost](http://localhost).

