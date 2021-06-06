#!/bin/bash
TODAY="`date +%Y%m%d`"
hugo new "post/$TODAY/index.md"
start ./content/post/$TODAY/index.md