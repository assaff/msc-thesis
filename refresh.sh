#!/bin/bash

orig_dir=$PWD

cd $(dirname $0)
git pull && make html latexpdf && chmod -R a+rX build

cd $orig_dir
