#!/bin/bash

echo "hi"
mkdir build
cd build
cmake ..
make check
