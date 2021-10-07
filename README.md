# README

- Instalar o docker do RabbitMQ: docker run -d --hostname my-rabbit --name rabbit13 -p 8080:15672 -p 5672:5672 -p 25676:25676 rabbitmq:3-management

- Instalar Docker com Postgresql: docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d 5432:5432 postgres:11.1-alpine

- Neste projeto "services_orders", executar o comando no terminal para dar permissão ao arquivo: chmod +x bin/bunny_consumer

- Para rodar o consumer, executar o comando: bin/bunny_consumer

- Configurar o projeto para rodar em portas diferentes: Projeto "Users" rodar na porta 3000 e o "services_orders" rodar na 3001

- Para iniciar a API em outro terminal rode: rails s
