#!/bin/sh

set -e

ngxsite template --all
ngxsite enable http
nginx -g 'daemon off;'
