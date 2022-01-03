# storage

[![Build Status](https://github.com/distbuild/storage/workflows/CI/badge.svg?branch=main&event=push)](https://github.com/distbuild/storage/actions?query=workflow%3ACI)
[![codecov](https://codecov.io/gh/distbuild/storage/branch/main/graph/badge.svg?token=S78151LC5J)](https://codecov.io/gh/distbuild/storage)
[![Go Report Card](https://goreportcard.com/badge/github.com/distbuild/storage)](https://goreportcard.com/report/github.com/distbuild/storage)
[![License](https://img.shields.io/github/license/distbuild/storage.svg)](https://github.com/distbuild/storage/blob/main/LICENSE)
[![Release](https://img.shields.io/github/release/distbuild/storage.svg)](https://github.com/distbuild/storage/releases/latest)



## Introduction

*storage* is the storage of [distbuild](https://github.com/distbuild) written in Go.



## Prerequisites

- Go >= 1.17.0



## Run

```bash
git clone https://github.com/distbuild/storage.git

cd storage
version=latest make build
./bin/storage --config-file="$PWD/config/config.yml"
```



## Docker

```bash
git clone https://github.com/distbuild/storage.git

cd storage
version=latest make docker
docker run -v "$PWD"/config:/tmp ghcr.io/distbuild/storage:latest --config-file="/tmp/config.yml"
```



## Usage

```
usage: storage --config-file=CONFIG-FILE [<flags>]

distbuild storage

Flags:
  --help                     Show context-sensitive help (also try --help-long
                             and --help-man).
  --version                  Show application version.
  --config-file=CONFIG-FILE  Config file (.yml)
```



## Settings

*storage* parameters can be set in the directory [config](https://github.com/distbuild/storage/blob/main/config).

An example of configuration in [config.yml](https://github.com/distbuild/storage/blob/main/config/config.yml):

```yaml
apiVersion: v1
kind: storage
metadata:
  name: storage
spec:
```



## License

Project License can be found [here](LICENSE).



## Reference
