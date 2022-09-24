#/bin/sh

PYTHON_BUILD_DEPS="build-base libffi-dev openssl-dev bzip2-dev zlib-dev readline-dev sqlite-dev xz-dev"
# bash, git: required by pyenv installation script
BUILD_DEPS="curl bash git $PYTHON_BUILD_DEPS"
DEPLOY_DEPS="file patchelf"

cat /etc/apk/repositories

apk update
apk upgrade
apk add $BUILD_DEPS $DEPLOY_DEPS

curl https://pyenv.run | bash
export PYENV_ROOT="/root/.pyenv"
export PATH="${PYENV_ROOT}/shims:${PYENV_ROOT}/bin:${PATH}"
eval "$(pyenv init -)"

pyenv install 3.10.7
pyenv global 3.10.7

# python poetry(cryptography package) requires rust compiler
curl https://sh.rustup.rs -sS | sh -s -- -y
source /root/.cargo/env
export PATH="/root/.cargo/bin:${PATH}"

# install poetry
curl -sSL https://install.python-poetry.org | python3 -
export PATH="/root/.local/bin:${PATH}"

apk del $BUILD_DEPS
