# Dockerfile: hombre-graylog

FROM graylog/graylog:4.0

ARG version

ARG MQTT_PLUGIN_VERSION=1.2.0-rc.1
ARG MQTT_PLUGIN_URL=https://github.com/graylog-labs/graylog-plugin-mqtt/releases/download/${MQTT_PLUGIN_VERSION}/graylog-plugin-mqtt-${MQTT_PLUGIN_VERSION}.jar
ARG MQTT_PLUGIN_PATH=/usr/share/graylog/plugin/graylog-plugin-mqtt-${MQTT_PLUGIN_VERSION}.jar

ARG RABBITMQ_PLUGIN_VERSION=1.4.1
ARG RABBITMQ_PLUGIN_URL=https://github.com/nexylan/graylog-rabbitmq/releases/download/v${RABBITMQ_PLUGIN_VERSION}/graylog-rabbitmq-${RABBITMQ_PLUGIN_VERSION}.jar
ARG RABBITMQ_PLUGIN_PATH=/usr/share/graylog/plugin/graylog-rabbitmq-${RABBITMQ_PLUGIN_VERSION}.jar

LABEL version="${version}"
LABEL description="Customized GrayLog Docker image"
LABEL maintainer="Hombrelab <me@hombrelab.com>"
LABEL inspiration="getting things done my way"

USER root

RUN apt-get update && apt-get install -y \
    bash \
    nano \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN curl --create-dirs -SLo ${MQTT_PLUGIN_PATH} ${MQTT_PLUGIN_URL} \
    && curl --create-dirs -SLo ${RABBITMQ_PLUGIN_PATH} ${RABBITMQ_PLUGIN_URL}