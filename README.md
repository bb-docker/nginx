# nginx
This repository contains Dockerfile for self config nginx in ubuntu.

## Getting Started
These instructions will get you to build the nginx in your docker. See Installation for notes on how to build your ubuntu on a live system.

### Installation
1. Install [Docker](https://www.docker.com/).
2. Download [automated build](https://hub.docker.com/r/bananabb/nginx/) from public [Docker Hub](https://hub.docker.com/) or run Usage tag provided.
```
docker exec -it web /bin/bash
```

### Usage
```
docker run -itd --name web -p 8080:80 bananabb/nginx
nginx -v
```

## License
MIT © [BananaBb](https://github.com/BananaBb)