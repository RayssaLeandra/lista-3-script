#!/bin/bash

read -p 'Digite um arquivo: ' file
tr -s [0-9] 'z' < $file


