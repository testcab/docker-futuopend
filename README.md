# testcab/futuopend

[![Docker image size](https://badgen.net/docker/size/testcab/futuopend)](https://hub.docker.com/r/testcab/futuopend)

An unofficial docker image packaging [FutuOpenD](https://www.futunn.com/download/OpenAPI).


## Supported tags and respective `Dockerfile` links

* [`8.5.4518`, `8.5`, `8`, `latest`](https://github.com/testcab/docker-futuopend/blob/main/Dockerfile)
* [`8.5.4508`](https://github.com/testcab/docker-futuopend/blob/8.5.4508/Dockerfile)
* [`8.4.4418`, `8.4`](https://github.com/testcab/docker-futuopend/blob/8.4/Dockerfile)
* [`8.4.4408`](https://github.com/testcab/docker-futuopend/blob/8.4.4408/Dockerfile)
* [`8.2.4218`, `8.2`](https://github.com/testcab/docker-futuopend/blob/8.2/Dockerfile)
* [`7.5.3708`, `7.5`, `7`](https://github.com/testcab/docker-futuopend/blob/7.5/Dockerfile)
* [`7.0.3218`, `7.0`](https://github.com/testcab/docker-futuopend/blob/7.0/Dockerfile)
* [`6.6.3108`, `6.6`, `6`](https://github.com/testcab/docker-futuopend/blob/6/Dockerfile)


## Usage

### Using default config file

```sh
alias FutuOpenD='docker run --rm -it -p 11111:11111 -v futu:/root/.com.futunn.FutuOpenD testcab/futuopend'

FutuOpenD -login_account=100000 -login_pwd=123456 -lang=en
```

### Using custom config file

```sh
alias FutuOpenD='docker run --rm -it -p 11111:11111 -v futu:/root/.com.futunn.FutuOpenD -v "$(PWD)"/FutuOpenD.xml:/opt/FutuOpenD/FutuOpenD.xml testcab/futuopend'

FutuOpenD
```
