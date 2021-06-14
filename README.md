# docker-rstudio

## Running RStudio

```bash
./rstudio.h -p 8787
```

- User ID: rstudio
- Password: 123

Based on `rocker/rstudio`: https://hub.docker.com/r/rocker/rstudio

## Stopping RStudio

```bash
$ docker ps
CONTAINER ID   IMAGE                  COMMAND   CREATED          STATUS          PORTS                                       NAMES
b172fe4cc021   rocker/rstudio:4.1.0   "/init"   32 seconds ago   Up 30 seconds   0.0.0.0:8787->8787/tcp, :::8787->8787/tcp   unruffled_lamarr

$ docker stop b172fe4cc021
b172fe4cc021
```
