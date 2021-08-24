FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install prometheus procps

COPY conf/prometheus.yml /etc/prometheus/prometheus.yml

RUN chown -R prometheus:prometheus /etc/prometheus
RUN chown -R prometheus:prometheus /var/lib/prometheus

EXPOSE 9090 9323

ENTRYPOINT exec prometheus --config.file=/etc/prometheus/prometheus.yml