FROM alpine/ansible

ARG USER_UID
ARG USER_GID

RUN addgroup -g ${USER_GID} "ansible" \
    && adduser -D -u ${USER_UID} -G "ansible" "ansible"

WORKDIR /home/ansible

CMD ["/bin/bash"]
