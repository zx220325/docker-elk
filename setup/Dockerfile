ARG ELASTIC_VERSION

# https://www.docker.elastic.co/
FROM harbor.jqdomain.com/personal-xin-zhu/elasticsearch:${ELASTIC_VERSION}

COPY ./lib.sh ./entrypoint.sh /
COPY ./roles /roles

ENTRYPOINT ["/entrypoint.sh"]
