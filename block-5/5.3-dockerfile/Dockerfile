
FROM alpine:3.14
RUN  CARGO_NET_GIT_FETCH_WITH_CLI=1 && \
     apk --no-cache add \
sudo python3 py3-pip openssl ca-certificates sshpass openssh-client rsync git && \
     apk --no-cache add \
     --virtual build-dependencies python3-dev libffi-dev musl-dev gcc cargo openssl-dev \
        libressl-dev \
        build-base && \
     pip install --upgrade pip wheel && \
     pip install --upgrade cryptography cffi && \
     pip install ansible==2.9.24 --ignore-installed && \
     pip install mitogen ansible-lint jmespath --ignore-installed && \
     pip install --upgrade pywinrm && \
     apk del build-dependencies && \
     rm -rf /var/cache/apk/* && \
     rm -rf /root/.cache/pip && \
     rm -rf /root/.cargo

RUN  mkdir /ansible && \
     mkdir -p /etc/ansible && \
     echo 'localhost' > /etc/ansible/hosts

WORKDIR /ansible
COPY ansible.cfg /ansible/

CMD  [ "ansible-playbook", "--version" ]