#!/bin/bash
patch_dir=$(dirname $0)
patch /usr/share/tesseract-ocr/tesstrain_utils.sh -i $patch_dir/tesstrain_utils.patch
patch $OCR_WORKSPACE/tesseract/src/training/unicharset/validate_myanmar.cpp -i $patch_dir/validate_myanmar.patch
