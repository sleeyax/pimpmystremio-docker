# pimpmystremio-docker
Docker image to run [PimpMyStremio](https://github.com/sungshon/PimpMyStremio) (Alpine based, ~110MB total size).

## Usage
`docker run -v <data path>:/root/.local/share/PimpMyStremio/ <sideloaded addons path>:/app/sideloaded -p [<host ip>:]<host port>:7777 --build-arg version=<PMS version to use> sleeyax/pimpmystremio`

### Examples

Quick start:

`docker run -p 7777:7777 sleeyax/pimpmystremio`

Advanced:

`docker run -v ~/Documents/PimpMyStremio/data:/root/.local/share/PimpMyStremio/ ~/Documents/PimpMyStremio/sideloaded:/app/sideloaded -p 127.0.0.1:7777:7777 --build-arg version=1.2.2 sleeyax/pimpmystremio`

After running any of the commands above, PMS should should be available at http://localhost:7777 .
