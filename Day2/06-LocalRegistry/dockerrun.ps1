mkdir c:\registry-data
docker container run -d -p 5000:5000 --interactive --tty -v c:\registry-data:c:\data adityakshettri/my-docker-registry:v10