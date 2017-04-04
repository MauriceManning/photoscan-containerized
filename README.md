# photoscan13-containerized
Photoscan in Singularity


```bash
git clone https://github.com/mauricemanning/photoscan13-containerized
cd photoscan13-containerized
docker build --rm --tag photoscan13 .
docker tag photoscan13:latest mauricemanning/photoscan13:latest
docker push mauricemanning/photoscan13:latest
docker images
sudo singularity create --size 2048 photoscan13.img
sudo singularity import photoscan13.img docker://mauricemanning/photoscan13:latest
singularity exec photoscan13.img photoscan.sh -v
```
