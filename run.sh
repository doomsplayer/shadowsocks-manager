#! /usr/bin/env bash
mongod -dbpath=/data &
node server
