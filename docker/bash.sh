# build image
docker build https://raw.githubusercontent.com/PhamQuocHuy1101/ops/master/docker/pytorch-ops-dockerfile

# push image to docker hub
docker login
docker push phamquochuy1101/pytorch-ops:latest

# pull image from docker hub
docker pull phamquochuy1101/pytorch-ops:latest

# run container
docker run --rm -it -v $(pwd):/huypq --gpus=all --network=host phamquochuy1101/pytorch-ops
