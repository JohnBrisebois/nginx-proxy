#!/bin/bash

docker exec certbot certbot renew --webroot -w /var/www/certbot --quiet

# If certs were renewed, reload Nginx
docker exec nginx nginx -s reload