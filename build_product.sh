#!/bin/bash
clear
shellpath=$(cd `diname $0`; pwd)
cd $shellpath
./gradlew clean --info --stacktrace
./gradlew assembleRelease --info --stacktrace
