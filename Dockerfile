FROM bananabb/ubuntu:24.04
MAINTAINER BananaBb

# Install nginx
RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y \
    nginx \
    varnish

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]