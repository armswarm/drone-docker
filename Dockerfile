FROM armhfbuild/docker:1.10-dind

ENV PLUGIN_STORAGE_DRIVER overlay

ADD drone-docker /bin/

ENTRYPOINT ["/usr/local/bin/dockerd-entrypoint.sh", "/bin/drone-docker"]
