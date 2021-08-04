# Bazarr

> The repository has been moved to [https://gitlab.jmk.hu/docker/media/bazarr](https://gitlab.jmk.hu/docker/media/bazarr).

Simple docker image for Bazarr without any bloat, built on the official python3 image. Bazarr runs as user `bazarr` with `uid` and `gid` `1000` and listens on port `6767`.

## Usage

```sh
docker run --rm registry.gitlab.jmk.hu/media/bazarr:<VERSION> \
  -p 6767:6767 \
  -v path/to/data:/data \
  -v path/to/movies:/movies \
  -v path/to/series:/series
```

or

```sh
docker run --rm ghudiczius/bazarr:<VERSION> \
  -p 6767:6767 \
  -v path/to/data:/data \
  -v path/to/movies:/movies \
  -v path/to/series:/series
```
