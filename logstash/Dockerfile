ARG ELASTIC_VERSION

# https://www.docker.elastic.co/
FROM harbor.jqdomain.com/personal-xin-zhu/logstash:${ELASTIC_VERSION}

COPY ./config/logstash.yml /usr/share/logstash/config/logstash.yml
COPY ./pipeline /usr/share/logstash/pipeline
# Add your logstash plugins setup here
# Example: RUN logstash-plugin install logstash-filter-json
