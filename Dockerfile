FROM fluent/fluentd:edge
# If you're planning to stream everything to opensearch / kibana you want to have this plugin
USER root
#RUN gem update --system && \
#gem install fluent-plugin-rewrite-tag-filter --source http://rubygems.org
#gem install fluent-plugin-opensearch nokogiri --source http://rubygems.org

RUN mkdir /logs && chown fluent /logs
USER fluent

#COPY etc/ /fluentd/etc/

WORKDIR /logs


#HEALTHCHECK --interval=10s --timeout=10s --retries=120 --start-period=5s \
#  CMD nc -z 127.0.0.1 24224 || exit 1
