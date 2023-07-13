#!/bin/bash
set -ex

bat apt-get update
bat apt-get install dirmngr --install-recommends
bat apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61
bat "deb https://dl.bintray.com/loadimpact/deb stable main" | bat tee -a /etc/apt/sources.list
bat apt-get update
bat apt-get install k6
