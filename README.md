# Upload File with Nginx upload module

- ENV:
   - nginx-1.22.1-alpine
   - nginx-upload-module-2.3.0

# Docker Image

Image available @https://hub.docker.com/repository/docker/andarius/nginx-upload

# Run

- Build the image:   
  ```sh
  docker build -t nginx-upload:dev . -f Dockerfile
  ```
  
- Start the nginx server:   
  ```sh
  docker run --rm \
    -p 5050:5050 \
    -v "$(pwd)/nginx.conf:/etc/nginx/nginx.conf:ro" \
    --name nginx-upload nginx-upload:dev
  ```

# Test
- To upload a file, run:  
```sh 
   curl 0.0.0.0:5050/upload -F "fileobj=@$(pwd)/README.md" -F "name=readme.md"
  ```
 You can then see the uploaded file with:
 ```sh
 docker exec nginx-upload ls -alh /tmp/nginx_upload
  ```
or with curl:
 ```sh
 curl 0.0.0.0:5050/0000000001
  ```
