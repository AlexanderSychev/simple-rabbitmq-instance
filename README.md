# Simple RabbitMQ instance for development

Includes
* RabbitMQ image configuration for Docker and Docker Compose with "Delayed Message Exchange" plugin;
* Vagrant VM configuration;

# How to use

## Directly by Docker and Docker Compose

Execute in project directory:

```bash
docker-compose up
```

RabbitMQ will be available at `localhost:5672`/`localhost:15672`.

## By Vagrant

Execute in project directory:

```bash
vagrant up
```

Connect to Vagrant VM:
```bash
vagrant ssh
```

Choose Rabbit directory on Vagrant VM:
```bash
cd /opt/rabbitmq
```

Execute in this directory:
```bash
docker-compose up
```

RabbitMQ will be available at `192.168.33.9:5672`/`192.168.33.9:15672`.
