FROM nidr0x/ubuntu1804-ansible

MAINTAINER Carlos Rodríguez <nidr0x@gmail.com>

COPY ansible/ /

RUN ansible-galaxy install -r requirements.yml && \
    ansible-playbook /playbook.yml && \
    apt-get -y clean && \
    apt-get -y autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 80 443

VOLUME ["/var/www"]
