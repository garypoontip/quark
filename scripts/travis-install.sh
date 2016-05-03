#!/bin/bash

set -ex

cwd=$(pwd)
cd $(dirname "$0")/..

scripts/env.sh install

case "${TRAVIS_OS_NAME}" in
    linux)
        sudo apt-get -y install libssl-dev swig python-dev curl\
             python2.7 python-pip tar gcc make python-dev libffi-dev\
             python-virtualenv openjdk-7-jdk maven
        sudo update-java-alternatives -s java-1.7.0-openjdk-amd64
        ;;
    osx)
        sudo pip install virtualenv
        ;;
    *)
        echo "Unsupported platform $TRAVIS_OS_NAME"
        exit 1
        ;;
esac

javac -version
java -version
java -version 2>&1 | grep -Fe 'java version "1.7.0'
python -c 'import sys; print(sys.version); sys.exit(int(sys.version_info[:3] < (2,7,6) or (3,0,0) < sys.version_info[:3]))'
rm -rf ~/.nvm &&
    git clone https://github.com/creationix/nvm.git ~/.nvm &&
    (cd ~/.nvm &&
            git checkout `git describe --abbrev=0 --tags`) &&
    source ~/.nvm/nvm.sh &&
    nvm install 4.2.2
nvm alias default 4.2.2
node --version
virtualenv quark-travis
". quark-travis/bin/activate"
pip install --upgrade pip
command rvm install 2.3.0
command rvm --default use 2.3.0
ruby --version
scripts/prepare-common.sh
mvn --version
npm install --save-dev travis-after-all
gem install travis-yaml
pip install --index-url $PYPI --extra-index-url $REALPYPI $QUARK_PACKAGE
pip freeze