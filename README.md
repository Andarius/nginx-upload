# Upload File with Nginx upload module

- ENV:
   - nginx-1.18.0
   - nginx-upload-module-2.3.0

# Docker Image

Image available @ https://hub.docker.com/repository/docker/andarius/nginx-upload

# Run
- ```docker build -t nginx-upload:v1 . -f Dockerfile```
- ```docker run -d -p 80:80 -p 8080:8080 --name nginx-upload nginx-upload:v1```

# Test
- access to the ```your ip:8080``` and you will see the nginx default web page
- ```curl your ip:80/upload -F "fileobj=@file path"``` to upload file
    and you can see the upload file at docker container at the path ```/tmp/nginx_upload/```
