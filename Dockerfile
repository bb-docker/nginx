FROM bananabb/ubuntu:20.10
MAINTAINER BananaBb

# Install nginx & packages & php
RUN apt-get update \
 && apt-get install -y \
    nginx

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]