FROM golang:latest AS base

RUN wget -q -O /docker_bootstrap.sh https://github.com/TyIsI/docker-bootstrap/raw/68b64ba3d49bda9784912f839890e68655db462b/docker_bootstrap.sh \
    && chmod 755 /docker_bootstrap.sh \
    && mkdir /etc/bootstrap.d/ \
    && cd /etc/bootstrap.d/ \
    && wget -q https://github.com/TyIsI/docker-bootstrap/raw/68b64ba3d49bda9784912f839890e68655db462b/bootstrap.d/00-bootstrap-banner \
    && wget -q https://github.com/TyIsI/docker-bootstrap/raw/68b64ba3d49bda9784912f839890e68655db462b/bootstrap.d/50-add-build-user.sh

ENTRYPOINT ["/docker_bootstrap.sh"]

FROM base

WORKDIR /build

CMD ["/bin/bash","-l"]
