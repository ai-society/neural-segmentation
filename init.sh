#!/bin/sh

TRAIN="http://duckit.margffoy-tuay.com/static/train.zip"
TEST="http://duckit.margffoy-tuay.com/static/test.zip"

if [ ! -d data ]; then
  mkdir "data"
  cd "data"
  
  if [ ! -d train ]; then
     echo "Downloading train data set...\n\n"
     wget -c $TRAIN
     
     echo "\n\nUnpacking train data set...\n\n"
     unzip "train.zip"
     rm "train.zip"
     cd train && mkdir "masks"
     for x in *_mask.tif; do mv $x masks/${x%_mask.tif}_mask.tif;done
     cd ..
  fi

  if [ ! -d test ]; then
     echo "Downloading test data set...\n\n"
     wget -c $TEST

     echo "\n\nUnpacking test data set...\n\n"
     unzip "test.zip"
     rm "test.zip"
  fi
fi

# for x in *_mask.tif; do mv $x masks/${x%_mask.tif}_mask.tif;done