#!/bin/bash
/bin/bash -c cd ~/devops-netology/8.1-ansible/playbook/
docker-compose up -d

ansible-playbook -i inventory/prod.yml site.yml --vault-password-file=pass
#--ask-vault-pass
#read -s -p "Vault password" netology

docker-compose down

