#!/bin/bash
clear
shellpath=$(cd `dirname $0`; pwd)
./gradlew clean --info --stacktrace
./gradlew assembleRelease --info --stacktrace
