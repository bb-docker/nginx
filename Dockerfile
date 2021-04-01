FROM bananabb/ubuntu:20.10
MAINTAINER BananaBb

# Install nginx
RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y \
    nginx

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]