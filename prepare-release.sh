#!/bin/bash

echo "version = $1"
# Added version
cat "version" >> version.md
printenv