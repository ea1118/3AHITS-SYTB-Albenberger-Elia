#!/bin/bash

anzahl=$(ls -l | grep '^d' | wc -l)

echo "$anzahl"