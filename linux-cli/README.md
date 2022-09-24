# Linux image for compiling Python CLI Applications

[Dockerhub](https://hub.docker.com/r/aksem/modapp-linux-py-cli)

Based on: Alpine Linux 3.16.2

Includes:

- Pyenv
- Python 3.10.7  (the latest stable version)
- Poetry
- rust/cargo (for `cryptography` package and others that require rust for build)
- tools needed for Python compilation (if you need a version another than 3.10.7)
- tools for deployment like `file`, `patchelf` etc
