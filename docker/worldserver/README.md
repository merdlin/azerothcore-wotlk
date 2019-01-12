# AzerothCore Dockerized Worldserver

This provides a way to launch a container with the AzerothCore authserver running inside it.

## Requirements

- You need to have [Docker](https://docs.docker.com/install/) installed in your system. You can install it on any operating system.

- You need to first build the [AzerothCore Build Image](https://github.com/azerothcore/azerothcore-wotlk/tree/master/docker/build).

- You have to copy the file `docker/worldserver/worldserver.conf.dist` and rename the copied file to `docker/worldserver/worldserver.conf`. Then open it and change the values where needed (you may need to change the DB port).

- You need to have the **data files** somewhere in your system. If you don't have them yet, check the step ["Download the data files" from the installation guide](https://github.com/AzerothCore/azerothcore-wotlk/wiki/Installation#5-download-the-data-files).

## Building the container image

To build the container image you have to be in the **main** folder of your local AzerothCore sources directory.

```docker build -t azerothcore/worldserver -f docker/worldserver/Dockerfile docker/worldserver```

*For more information about the `docker build` command, check the [docker build doc](https://docs.docker.com/engine/reference/commandline/build/).*

## Run the container

Replace `/path/to/your/data` with the path of where your data folder is.

```docker run --name azt-worldserver --mount type=bind,source=/path/to/your/data,target=/azeroth-server/data --network host -it azerothcore/worldserver```

*For more information about the `docker run` command, check the [docker run doc](https://docs.docker.com/engine/reference/run/).*