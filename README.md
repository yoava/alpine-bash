# alpine-bash

A minimal Docker image: [Alpine Linux](https://alpinelinux.org/) with `bash` installed.

## What's in it

```dockerfile
FROM alpine:latest
RUN apk update && apk upgrade && apk add --update bash && rm -rf /var/cache/apk/*
```

That's the entire image: Alpine's base packages, upgraded, plus `bash` (Alpine's default shell
is `ash`/BusyBox sh, which lacks some bash features).

## Build

```bash
docker build -t alpine-bash .
```

## Is this still needed?

Honestly, probably not for most cases today — `docker run alpine:latest sh -c "apk add bash"`
(or a one-line `RUN apk add --no-cache bash` in your own Dockerfile) gets you the same thing
without pulling a separate image. This repo predates that becoming common practice and is kept
around as a ready-made base rather than because it does something you can't do in one line.
