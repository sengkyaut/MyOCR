#!/bin/bash
patch /usr/share/tesseract-ocr/tesstrain_utils.sh -i tesstrain_utils.patch
patch /home/workspace/tesseract/src/training/unicharset/validate_myanmar.cpp -i validate_myanmar.patch
