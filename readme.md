1. Copy the configuration file
```
cp .env.example .env
```
change the config in .env file.

2. start the service you want in the docker-compsose.yml
example
```sh
docker-compose up -d kafka-ui
```