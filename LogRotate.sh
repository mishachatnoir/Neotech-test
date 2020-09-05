#!/bin/bash
find ./log* -mtime +90 -exec rm -rf {} \;
find ./log* -mtime +30 -exec tar -cvf {} \;
