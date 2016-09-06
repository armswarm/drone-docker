FROM armhfbuild/docker:1.12-dind

LABEL repository="https://github.com/armswarm/drone-docker"

ENV PLUGIN_STORAGE_DRIVER overlay

ADD drone-docker /bin/

ENTRYPOINT ["/usr/local/bin/dockerd-entrypoint.sh", "/bin/drone-docker"]
