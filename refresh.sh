#!/bin/bash

orig_dir=$PWD

cd $(dirname $0)
git pull && make html latexpdf

cd $orig_dir
