FROM alpine:3.16.2

COPY ./setup_env.sh /opt/setup_env.sh

# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG C.UTF-8

RUN sh /opt/setup_env.sh

ENV PYENV_ROOT="/root/.pyenv"
ENV PATH="/root/.local/bin:/root/.cargo/bin:${PYENV_ROOT}/shims:${PYENV_ROOT}/bin:${PATH}"
