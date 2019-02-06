# OpenSSL on Alpine Linux

- Docker Hub: [hugojosefson/openssl](https://hub.docker.com/r/hugojosefson/openssl/)
  - Auto-updated whenever [alpine](https://hub.docker.com/_/alpine/) is updated.
- Repository: <https://github.com/hugojosefson/docker-openssl>
- Dockerfile: <https://github.com/hugojosefson/docker-openssl/blob/master/Dockerfile>
- Base Image: [alpine](https://hub.docker.com/_/alpine/)

## Examples

### OpenSSL REPL

```bash
docker run --rm -it hugojosefson/openssl
```

### Print some random data

```bash
docker run --rm -it \
  hugojosefson/openssl \
  rand -base64 32
```

### Create an SSL Certificate

OpenSSL asks for details and exports the certificate in the current directory as `cert.pem`:

```bash
docker run --rm -it \
  -v $(pwd):/export \
  -w /export \
  -u $(id -u):$(id -g) \
  hugojosefson/openssl \
  req -nodes -new -newkey rsa:2048 -sha256 -out /export/cert.pem
```

Read the OpenSSL [documentation](https://www.openssl.org/docs/) for further information.
