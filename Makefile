.PHONY: tag
tag:
	@echo "Tagging ELK..."
	@podman tag docker.elastic.co/elasticsearch/elasticsearch:${ELASITC_VERSION} harbor.jqdomain.com/personal-xin-zhu/elasticsearch:${ELASITC_VERSION}
	@podman tag docker.elastic.co/kibana/kibana:${ELASITC_VERSION} harbor.jqdomain.com/personal-xin-zhu/kibana:${ELASITC_VERSION}
	@podman tag docker.elastic.co/logstash/logstash:${ELASITC_VERSION} harbor.jqdomain.com/personal-xin-zhu/logstash:${ELASITC_VERSION}
	@podman tag docker.elastic.co/beats/filebeat:${ELASITC_VERSION} harbor.jqdomain.com/personal-xin-zhu/filebeat:${ELASITC_VERSION}


.PHONY: push
push: tag
	@echo "Pushing ELK..."
	@podman push harbor.jqdomain.com/personal-xin-zhu/elasticsearch:${ELASITC_VERSION}
	@podman push harbor.jqdomain.com/personal-xin-zhu/kibana:${ELASITC_VERSION}
	@podman push harbor.jqdomain.com/personal-xin-zhu/logstash:${ELASITC_VERSION}
	@podman push harbor.jqdomain.com/personal-xin-zhu/filebeat:${ELASITC_VERSION}