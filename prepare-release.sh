#!/bin/bash

echo "version = $1"
# Added version
# mvn versions:set -DnewVersion=$1
JAR_VERSION=`echo $1 | cut -d'v' -f2`
echo "jar = $JAR_VERSION"
mvn versions:set -DnewVersion=$JAR_VERSION

echo "Packaging...."
mvn package 
echo "Copying jar to release folder...."
mkdir release && cp target/*.jar release

printenv