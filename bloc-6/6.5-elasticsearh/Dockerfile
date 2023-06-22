FROM centos:7

#RUN adduser elasticsearch

USER 0
## копирование файлов установки эластика
COPY ./ee/* /tmp/

RUN yum install perl-Digest-SHA  -y && \
    cd /tmp/ && \
    shasum -a 512 -c elasticsearch-7.17.9-linux-x86_64.tar.gz.sha512 && \
    tar -xzf elasticsearch-7.17.9-linux-x86_64.tar.gz && \
    rm -f *.tar.* && \
    yum remove -y perl-Digest-SHA && \
    yum clean all && \
    adduser elasticsearch && \
    mv elasticsearch-7.17.9 /var/lib/elasticsearch && \
    mkdir /var/lib/elasticsearch/snapshots && \
    chown -R elasticsearch:elasticsearch /var/lib/elasticsearch &&\
    cd /var/lib/elasticsearch/

#COPY elasticsearch.yml /var/lib/elasticsearch/config/

#RUN  chown -R elasticsearch:elasticsearch /var/lib/elasticsearch 

USER elasticsearch

COPY elasticsearch.yml /var/lib/elasticsearch/config/

ENV ES_HOME=/var/lib/elasticsearch \
    ES_PATH_CONF=/var/lib/elasticsearch/config

WORKDIR /var/lib/elasticsearch

EXPOSE 9200 9300

CMD ["/var/lib/elasticsearch/bin/elasticsearch"]
