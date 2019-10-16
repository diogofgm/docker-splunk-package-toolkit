FROM python:2.7

VOLUME /src

RUN wget http://download.splunk.com/misc/packaging-toolkit/splunk-packaging-toolkit-1.0.0.tar.gz -O /tmp/splunk-packaging-toolkit.tar.gz && \
    pip install semantic_version && \
    pip install /tmp/splunk-packaging-toolkit.tar.gz && \
    rm /tmp/splunk-packaging-toolkit.tar.gz

WORKDIR /src

CMD slim generate-manifest /src/ -o /src/app.manifest
