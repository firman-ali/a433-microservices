#!/bin/sh

# # membuat Docker image
docker build -t item-app:v1 .

# # # daftar image
docker images

# # # Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/firman-ali/item-app:v1

# # Login ke GitHub Packages
echo $CR_PAT | docker login ghcr.io -u firman-ali --password-stdin

# # Mengunggah image ke GitHub Packages
docker push ghcr.io/firman-ali/item-app:v1
