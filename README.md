# photoscan13-containerized
Photoscan in Singularity


```bash
git clone https://github.com/mauricemanning/photoscan13-containerized
cd photoscan13-containerized
docker build --rm --tag photoscan13 .
docker tag photoscan13:latest mmmanning/photoscan13:latest
docker push mmmanning/photoscan13:latest
docker images
singularity pull docker://mmmanning/photoscan13:latest
singularity exec photoscan13.img /usr/local/photoscan-pro/photoscan.sh --help -i
```
