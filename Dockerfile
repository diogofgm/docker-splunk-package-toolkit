FROM python:2

VOLUME /src

RUN wget http://download.splunk.com/misc/packaging-toolkit/splunk-packaging-toolkit-1.0.0.tar.gz -O /tmp/plunk-packaging-toolkit.tar.gz && \
    pip install semantic_version && \
    pip install /tmp/plunk-packaging-toolkit.tar.gz && \
    rm /tmp/plunk-packaging-toolkit.tar.gz

WORKDIR /src

CMD splunk-appinspect inspect /src/
