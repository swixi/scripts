#!/bin/bash
echo "" >> notes.txt
echo "--- $(date +%Y/%m/%d)" >> notes.txt
echo "$1" >> notes.txt
