#!/bin/bash
set -ex

runas apt-get update
runas apt-get install dirmngr --install-recommends
runas apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C5AD17C747E3415A3642D57D77C6C491D6AC1D69
echo "deb https://dl.k6.io/deb stable main" | runas tee /etc/apt/sources.list.d/k6.list
runas apt-get update
runas apt-get install k6
