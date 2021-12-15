#!/bin/bash
sudo apt update && sudo apt install -y \
	autoconf autoconf-archive automake build-essential checkinstall \
	cmake g++ git pkg-config wget xzgv zlib1g-dev \
	libtesseract-dev libcairo2-dev libicu-dev libjpeg-dev libpango1.0-dev \
	libgif-dev libwebp-dev libopenjp2-7-dev libpng-dev libtiff-dev libtool
#	tesseract-ocr-mya tesseract-ocr-script-mymr

#add path env
echo "export PATH=$PATH:/usr/share/tesseract-ocr" >> ~/.profile
echo "export TESSDATA_PREFIX=/usr/share/tesseract-ocr/4.00/tessdata" >> ~/.profile

#workspace
export OCR_WORKSPACE=~/workspace
echo "export OCR_WORKSPACE=$OCR_WORKSPACE" >> ~/.profile
git clone https://github.com/sengkyaut/MyOCR $OCR_WORKSPACE/MyOCR
git clone https://github.com/sengkyaut/tesseract.git $OCR_WORKSPACE/tesseract

#patching
#bash $OCR_WORKSPACE/MyOCR/patch_files/start_patch.sh

#compiling
cd $OCR_WORKSPACE/tesseract
./autogen.sh && ./configure
make
sudo make install
sudo ldconfig

#make training tools
make training
sudo make training-install

#build deb pkg (not necessary)
#checkinstall -D --install=no -y --pakdir=~/pkg --pkgname=tesseract-sk-latest
