#!/usr/bin/bash

cwd=$(pwd)
wget http://vast.uccs.edu/OSDN/data.tar
tar xvf data.tar
docker build -t libmr . --no-cache
docker run -v ./data:/OSDN/data -i -t libmr:latest /bin/bash
