# Instalar Docker

## Atualize seus pacotes

        sudo apt update

## Permita que o apt utilize pacotes via HTTPS:

	sudo apt install apt-transport-https ca-certificates curl software-properties-common

## Adicione a chave GPG
	
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -


## Adicione o repositório do Docker

	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

## Atualize seus pacotes novamente (update)
        sudo apt update

## Certifique-se de que você irá instalar a partir do repositório do Docker
	
	apt-cache policy docker-ce

## Instale o Docker
	sudo apt install docker-ce

## Verificação final

	sudo systemctl status docker


## Configuração do docker – adicionar seu usuário ao grupo docker

	sudo usermod -aG docker ${USER}

	
	su - ${USER}

	
	id -nG

	sudo usermod -aG docker nome-do-usuário

## Instalando docker-compose 


        sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose


## Definir as permissões

	sudo chmod +x /usr/local/bin/docker-compose

## Verificando a versão
	docker-compose --version
