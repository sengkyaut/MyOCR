

# MyOCR
Some scripts that I copy from https://github.com/astutejoe/tesseract-tutorial and modify for shan language training (Myanmar sub language) .


# Require / Sources

 - https://github.com/tesseract-ocr/tesseract (Used validate_myanmar.cpp modified version)
 - https://github.com/sengkyaut/tesseract (my repo modified version)
 - https://github.com/tesseract-ocr/tessdata_best (For mya.lstm ref)
 - https://github.com/tesseract-ocr/langdata_lstm (For charsets)
 - https://github.com/kaungyeehein/mm-ocr (tesseract dev script and tools installation)

# Installation (for training)

## Clone langdata
```
git clone https://github.com/tesseract-ocr/langdata_lstm.git
```
## Using install script
```
git clone https://github.com/sengkyaut/MyOCR.git
chmod +x MyOCR/install/install.sh
./MyOCR/install/install.sh
```

## Using Docker
```
git clone https://github.com/tesseract-ocr/langdata_lstm.git
cd langdata_lstm
sudo docker pull sengkyaut/t4cmp:latest
sudo docker run --rm -d -p 2222:22 -v ${PWD}:/langdata_lstm -v --name skt4cmp sengkyaut/t4cmp
```
or
```
git clone https://github.com/sengkyaut/MyOCR.git
cd MyOCR
docker-compose up
```    

 - **tesserect** source repo and **MyOCR** repo located in **/root/workspace**
 - **langdata_lstm** repo also mounted in **/langdata_lstm**

### login to docker container
`ssh root@localhost -p 2222`
**password is `toor`**

# To do

 - [ ] Prepare `training data`
 - [ ] Retrain or Finetune_plusminus` myanmar `model with full `shan charsets`
 - [ ] Check percent and Finetune other shan fonts
