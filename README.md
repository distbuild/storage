# storage

[![Build Status](https://github.com/distbuild/storage/workflows/CI/badge.svg?branch=main&event=push)](https://github.com/distbuild/storage/actions?query=workflow%3ACI)
[![codecov](https://codecov.io/gh/distbuild/storage/branch/main/graph/badge.svg?token=FM4NOMPT7Q)](https://codecov.io/gh/distbuild/storage)
[![License](https://img.shields.io/github/license/distbuild/storage.svg)](https://github.com/distbuild/storage/blob/main/LICENSE)
[![Tag](https://img.shields.io/github/tag/distbuild/storage.svg)](https://github.com/distbuild/storage/tags)
[![Gitter chat](https://badges.gitter.im/craftslab/distbuild.png)](https://gitter.im/craftslab/distbuild)



## Introduction

*storage* is the build storage of [distbuild](https://github.com/distbuild) written in Rust.



## Prerequisites

- Rust >= 1.57.0



## Run

```bash
git clone https://github.com/distbuild/storage.git

cd storage
make build
./target/release/storage --config-file="$PWD/src/config/config.yml"
```



## Docker

```bash
git clone https://github.com/distbuild/storage.git

cd storage
make docker
docker run -v "$PWD"/src/config:/tmp ghcr.io/distbuild/storage:latest --config-file="/tmp/config.yml"
```



## Usage

```
USAGE:
    storage --config-file <NAME>

OPTIONS:
    -c, --config-file <NAME>    Config file (.yml)
    -h, --help                  Print help information
    -V, --version               Print version information
```



## Settings

*storage* parameters can be set in the directory [config](https://github.com/distbuild/storage/blob/main/src/config).

An example of configuration in [config.yml](https://github.com/distbuild/storage/blob/main/src/config/config.yml):

```yaml
apiVersion: v1
kind: storage
metadata:
  name: storage
spec:
  foo: foo
```



## License

Project License can be found [here](LICENSE).



## Reference
