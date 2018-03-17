#!/bin/bash

sudo cpulimit -l 70 -p `ps -ef | grep "ld-linux-x86-64" | grep -vw "grep" | awk "{print \\$2}"` 