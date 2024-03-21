ARG ELASTIC_VERSION

# https://www.docker.elastic.co/
FROM harbor.jqdomain.com/personal-xin-zhu/elasticsearch:${ELASTIC_VERSION}

COPY ./config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
# Add your elasticsearch plugins setup here
# Example: RUN elasticsearch-plugin install analysis-icu