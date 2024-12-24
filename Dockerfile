FROM debian:bookworm-20240904

RUN apt update && apt install -y pipewire cron
RUN touch /var/log/cron.log

COPY ./docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
CMD docker-entrypoint.sh
