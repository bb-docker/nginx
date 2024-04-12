# nginx
This repository contains Dockerfile of nginx in ubuntu.

## Getting Started
These instructions will get you to build the nginx in your docker. See Installation for notes on how to build your ubuntu on a live system.

### Installation
1. Install [Docker](https://www.docker.com/).
2. Download the source from public [Docker Hub](https://hub.docker.com/r/bananabb/nginx/) or run Usage tag provided.

### Usage
```
docker pull bananabb/nginx:latest
docker run -itd --name nginx -p 8080:80 bananabb/nginx
docker exec -it nginx /bin/bash
nginx -v
```

### Setup Varnish for website performance improvement (Optional)
1. Change nginx to listen 8080
2. Reload the Nginx `/etc/init.d/nginx reload`
3. Update listening port from 6081 to 80 in `/etc/default/varnish` file
4. Run command `sudo service varnish start` after setting completed
5. Use command `curl -I http://localhost:8080/` to verify the Varnish
![alt text](https://github.com/bb-docker/nginx/blob/main/varnish_result.png?raw=true)

### Reminder
Please use `/etc/init.d/nginx reload` to replace the nginx restart, after you Creating a Server Block in `/etc/nginx/sites-available` directory.

## License
MIT © [BananaBb](https://github.com/BananaBb)