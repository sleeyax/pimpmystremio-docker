# pimpmystremio-docker
Docker image to run [PimpMyStremio](https://github.com/sungshon/PimpMyStremio) (Alpine Based).

This docker image comes in two flavors. PimpMyStremio based on the [binaries](https://github.com/sungshon/PimpMyStremio/releases) (default or `latest` tag) and from [source code](https://github.com/sungshon/PimpMyStremio) (`fromsource` tag). The former image is smaller but try the latter if it doesn't work on your device (e.g devices such as Raspberry PI, because PMS doesn't have any binaries targetting ARMv7 and such yet).

## Usage
`docker run -v <data path>:/root/.local/share/PimpMyStremio/ <sideloaded addons path>:/app/sideloaded -p [<host ip>:]<host port>:7777 sleeyax/pimpmystremio`

### Examples

Quick start:

`docker run -p 7777:7777 sleeyax/pimpmystremio`

`docker run -p 7777:7777 sleeyax/pimpmystremio:fromsource`

Advanced:

`docker run -v ~/Documents/PimpMyStremio/data:/root/.local/share/PimpMyStremio/ ~/Documents/PimpMyStremio/sideloaded:/app/sideloaded -p 127.0.0.1:7777:7777 sleeyax/pimpmystremio`

After running any of the commands above, PMS should should be available at http://localhost:7777 .

## Developer commands
Create `fromsource` image targetting major platforms & push to docker hub:
`docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t sleeyax/pimpmystremio:fromsource -f Dockerfile.fromsource --push .`
