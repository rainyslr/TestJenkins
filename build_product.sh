#!/bin/bash
clear
shellpath=$(cd `dirname $0`; pwd)
groupOut=$shellpath'/groupOut'
cd $shellpath

rm -r $groupOut
mkdir $groupOut
mkdir $groupOut'/aar'
mkdir $groupOut'/apk'

./gradlew clean --info --stacktrace
./gradlew assembleRelease --info --stacktrace
cp -f ./app/build/outputs/apk/release/app-release.apk  $groupOut'/apk/app-release.apk'
