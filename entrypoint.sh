#!/bin/bash

ansible-galaxy install -r requirements.yml && \
    ansible-playbook /playbook.yml && \
    /etc/init.d/nginx start && \
    tail -f /dev/null
