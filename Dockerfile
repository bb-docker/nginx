FROM bananabb/ubuntu:22.04
MAINTAINER BananaBb

# Install nginx
RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y \
    nginx

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]