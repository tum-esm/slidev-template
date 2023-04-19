#!/bin/bash

set -o errexit

cd src
yarn && yarn develop
cd ..