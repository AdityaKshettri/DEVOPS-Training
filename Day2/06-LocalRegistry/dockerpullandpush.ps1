docker pull hello-world:latest
docker image tag hello-world:latest registry.local:5000/infrastructure/helloworld:v10
#push to local registry
docker image push registry.local:5000/infrastructure/helloworld:v10
