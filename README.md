# hombre-graylog
![Docker Pulls](https://img.shields.io/docker/pulls/hombrelab/hombre-graylog) ![Docker Image Version (latest by date)](https://img.shields.io/docker/v/hombrelab/hombre-graylog) ![GitHub commit activity](https://img.shields.io/github/last-commit/hombrelab/hombre-graylog)  

The [hombre-graylog](https://hub.docker.com/repository/docker/hombrelab/hombre-graylog) image is based on the [official Graylog v4.0 image](https://hub.docker.com/r/graylog/graylog).  
The image is created by [@Hombrelab](me@hombrelab.com) with additional plugins.  

Includes:
- linux packages: bash, nano, ca-certificates.  

Plugins:
- [MQTT Plugin](https://github.com/graylog-labs/graylog-plugin-mqtt)
- [RabbitMQ Plugin](https://github.com/nexylan/graylog-rabbitmq)