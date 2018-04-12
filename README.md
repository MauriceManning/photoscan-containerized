# photoscan-containerized
Photoscan in Singularity
currently running Agisoft Photoscan 1.4.1


```bash
git clone https://github.com/mauricemanning/photoscan-containerized
cd photoscan-containerized
docker build --rm --tag photoscan .
docker tag photoscan:latest mmmanning/photoscan:latest
docker push mmmanning/photoscan:latest
docker images
singularity pull docker://mmmanning/photoscan:latest
singularity exec photoscan.img /usr/local/photoscan-pro/photoscan.sh --help -i
```
