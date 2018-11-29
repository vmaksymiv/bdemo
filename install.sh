#!/usr/bin/env bash

curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

pyenv update
pyenv install 3.7.1
pyenv virtualenv 3.7.1 bdemo

git clone https://github.com/vmaksymiv/bdemo.git
cd bdemo
pyenv local bdemo

pip install zc.buildout
buildout -c development.cfg