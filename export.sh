#!/bin/bash

set -o errexit

cd src
yarn && yarn export
cd ..