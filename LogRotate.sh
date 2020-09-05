#!/bin/bash
find ./log* -mtime +30 -exec rm -rf {} \;
