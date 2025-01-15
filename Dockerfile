ARG ELASTICSEARCH_VERSION
FROM elasticsearch:${ELASTICSEARCH_VERSION}

ENV IK_RELEASE=https://release.infinilabs.com/analysis-ik/stable/elasticsearch-analysis-ik-${ELASTICSEARCH_VERSION}.zip
ENV STC_RELEASE=https://release.infinilabs.com/analysis-stconvert/stable/elasticsearch-analysis-stconvert-${ELASTICSEARCH_VERSION}.zip
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch $IK_RELEASE
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch $STC_RELEASE
