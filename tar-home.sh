#!/bin/bash
tar -cvf "home_$(date +%Y-%m-%d).tar" --exclude='go/*' --exclude='.cache/*' "/home/$(whoami)"
