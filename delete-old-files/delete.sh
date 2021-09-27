#!/bin/bash

find /path-to-dir -mtime +90 -exec rm {} \;
