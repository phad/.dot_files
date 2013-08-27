#!/bin/bash

ANDROID_HOME=/home/paul/android-sdk-linux
export ANDROID_HOME

ANDROID_STUDIO_HOME=/opt/android-studio
export ANDROID_STUDIO_HOME

PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_STUDIO_HOME/bin:$PATH
export PATH
