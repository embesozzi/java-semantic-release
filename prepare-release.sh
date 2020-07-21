#!/bin/bash

echo "version = $1"
cat "version" >> version.md
printenv