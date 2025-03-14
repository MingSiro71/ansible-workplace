#! /bin/bash
WORKSPACE_DIR=/home/ansible/workspace
RAW_KEY_DIR=${WORKSPACE_DIR}/keys
ENCRIPT_DIST_DIR=${WORKSPACE_DIR}/encripted_keys
docker compose exec ansible /bin/bash -c "mkdir -p ${ENCRIPT_DIST_DIR} && ansible-vault encrypt ${RAW_KEY_DIR}/${1} --output ${ENCRIPT_DIST_DIR}/${1}"
