# ansible-nginx-docker

Just testing Docker within ansible to install nginx webserver.

It uses Docker image/tag from nidr0x/ubuntu1804-ansible and installs geerlingguy.nginx role. In future versions, i use my own nginx role and i will add PHP support.

# Build

In first place, you will need to build the image

```docker build -t nginx .```

When it finishes, we proceed to run it

```docker run -d -p 80:80 -p 443:443 nginx```

## License

MIT / BSD
