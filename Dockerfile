FROM quay.io/armswarm/docker:17.10.0-ce-dind

ADD drone-docker /bin/

RUN ln -s /usr/bin/docker /usr/local/bin/docker \
    && ln -s /usr/bin/dockerd /usr/local/bin/dockerd

ENTRYPOINT ["/usr/local/bin/dockerd-entrypoint.sh", "/bin/drone-docker"]
