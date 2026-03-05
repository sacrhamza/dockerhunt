FROM alpine

ARG USER=dockerhunt

WORKDIR /home/${USER}

RUN apk update && apk add bash podman-docker iptables fuse-overlayfs vim

# for podman-docker not warn the user
RUN touch /etc/containers/nodocker
# create dockerhunt user and set the password to dockerhunt | home | shell
RUN echo -e "${USER}\n${USER}" | adduser dockerhunt --shell /bin/bash --home /home/${USER}

COPY ./levels /src/levels

COPY ./bashrc ./.bashrc

RUN chmod 744 ./.bashrc

USER dockerhunt

CMD ["bash"]
