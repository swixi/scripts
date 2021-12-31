#!/bin/bash
tar -cvf "home_$(date +%Y-%m-%d).tar" --exclude='go/bin' --exclude='go/pkg' --exclude='.cache/*' "/home/$(whoami)"
