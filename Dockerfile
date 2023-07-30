FROM alpine:3.5

LABEL maintainer="vo1d.bin"

WORKDIR /data

COPY startup.sh /startup.sh

RUN apk add --no-cache bash mysql mysql-client \
    && rm -rf /var/cache/apk/*

COPY my.cnf /etc/mysql/my.cnf

EXPOSE 3306

CMD ["/startup.sh"]
