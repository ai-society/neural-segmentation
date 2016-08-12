# neural-segmentation
Identification of nerve structures in ultrasound images of the neck, via Convolutional Neural Networks and Unsupervised Learning Techniques

## About the Challenge
[Ultrasound Nerve Segmentation](https://www.kaggle.com/c/ultrasound-nerve-segmentation) - _Accurately identifying nerve structures in ultrasound images is a critical step in effectively inserting a patient’s pain management catheter. Surgery inevitably brings discomfort, and oftentimes involves significant post-surgical pain. Currently, patient pain is frequently managed through the use of narcotics that bring a bevy of unwanted side effects._

## Dataset description
Each dataset test/train case is described by an grayscale ultrasound image of dimensions 580px x 420px. 

1. **Train Set**
   The train dataset contains 5635 cases, each case is associated to a binary B&W mask of size 580px x 420px, which establishes the position of the nerve structure in the image.

2. **Test Set**
   The test set is comprised by 5508 images, without any binary masks defined.

## Dataset Download
* [Train Dataset](http://duckit.margffoy-tuay.com/static/train.zip) (1.1GB) - *MD5 Checksum:* ```fba272da39a6bcfe7489ae6a802924bf```
* [Test Dataset](http://duckit.margffoy-tuay.com/static/test.zip) (1.1GB) - *MD5 Checksum:* ```1a6cb8739900b7df85f368729141274f```

## Repository clone and dataset download script
Open a terminal in the folder that contains this repository clone and execute:
```bash
git clone https://github.com/GUIAUniandes/neural-segmentation.git
cd neural-segmentation
./init.sh
```



