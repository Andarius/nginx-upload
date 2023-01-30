# Upload File with Nginx upload module

- ENV:
   - nginx-1.22.0-alpine
   - nginx-upload-module-2.3.0

# Docker Image

Image available @https://hub.docker.com/repository/docker/andarius/nginx-upload

# Run

- ```sh
  docker build -t nginx-upload:v1 . -f Dockerfile
  ```
  
- ```sh
  docker run -d -p 80:80 -p 8080:8080 --name nginx-upload nginx-upload:v1
  ```

# Test
- access to the `your ip:8080` and you will see the nginx default web page
- `curl your ip:80/upload -F "fileobj=@file path"` to upload file,
    you can then see the uploaded file ib the docker container at the path `/tmp/nginx_upload/`
