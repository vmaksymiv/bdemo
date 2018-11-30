#!/usr/bin/env bash

curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

if ! command -v pyenv 1>/dev/null; then
    export PATH="${HOME}/.pyenv/bin:$PATH"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

pyenv update
pyenv install 3.6.5
pyenv virtualenv 3.6.5 bdemo

git clone https://github.com/vmaksymiv/bdemo.git
cd bdemo
pyenv local bdemo && pip install zc.buildout && buildout -c development.cfg
