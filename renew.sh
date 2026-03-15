#!/bin/bash
set -e

/usr/bin/docker run --rm \
  -v /home/john/nginx-proxy/data/certbot/conf:/etc/letsencrypt \
  -v /home/john/nginx-proxy/data/certbot/www:/var/www/certbot \
  certbot/certbot renew --webroot -w /var/www/certbot --quiet

/usr/bin/docker exec nginx nginx -s reload
