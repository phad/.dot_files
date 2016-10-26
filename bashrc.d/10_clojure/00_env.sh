#!/bin/bash

CLOJURE_EXT=$HOME/.clojure.d/ext
export CLOJURE_EXT

CLOJURE_JAVA=/usr/local/buildtools/java/jdk/bin/java
export CLOJURE_JAVA

CLOJURE_OPTS="-Xms32M -Xmx128M -server"
export CLOJURE_OPTS

CLOJURE_MAIN=clojure.main
export CLOJURE_MAIN

# See http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
SCRIPT_PATH="${BASH_SOURCE[0]}";
if ([ -h "${SCRIPT_PATH}" ]) then
  while([ -h "${SCRIPT_PATH}" ]) do SCRIPT_PATH=`readlink "${SCRIPT_PATH}"`; done
fi
pushd . > /dev/null
cd `dirname ${SCRIPT_PATH}` > /dev/null
SCRIPT_PATH=`pwd`;
popd  > /dev/null

PATH=$SCRIPT_PATH:$PATH
export PATH
