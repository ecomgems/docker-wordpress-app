#!/usr/bin/env sh

(cd 7.4;docker build --no-cache -t ecomgems/wordpress-app:7.4 .)
docker push ecomgems/wordpress-app:7.4
