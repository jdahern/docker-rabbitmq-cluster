FROM rabbitmq:3.5.3-management
MAINTAINER Dimitris Kapanidis dimitris.kapanidis@harbur.io

COPY rabbitmq-cluster /usr/local/bin/
COPY pre-entrypoint.sh /
RUN rabbitmq-plugins enable rabbitmq_stomp --offline
EXPOSE 5672 15672 25672 4369 9100 9101 9102 9103 9104 9105 61613
ENTRYPOINT ["/pre-entrypoint.sh"]
CMD ["rabbitmq-cluster"]
