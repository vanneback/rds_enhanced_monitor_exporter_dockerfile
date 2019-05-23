FROM quay.io/prometheus/busybox:glibc

COPY ./rds_enhanced_monitoring_exporter /bin/rds_enhanced_monitoring_exporter

EXPOSE 9408
USER nobody
WORKDIR /home/nobody
COPY ./rds_enhanced_monitoring_exporter.yml /etc/rds-exporter/config

ENTRYPOINT  [ "/bin/rds_enhanced_monitoring_exporter", "--config.file=/etc/rds-exporter/config" ]
