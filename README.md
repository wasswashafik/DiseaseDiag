*********************************************************************************************************************************
## DiseaseDiag

This respository details all used codes during the model implementation.
DiseaseDiag a model designed to implement *computer-based software* and *Android* mobile application which can automatically 
identify the plant leaf diseases based on its leaf appearance using **machine learning** and **computer vision** techniques. 

***********************************************************************************************************************************
## Target audience

The target group of the user is those farmers who request need to request and quickly gets to understand the common leaf disease 
at any time of the day at farm level. 
A coputer-based version is also designed to aid plant pathologists to have rapid process compared to traditional process of taking 
samples to the lab that consumes time.


************************************************************************************************************************************
## Used Algoriths 

EM and Otsu algorithms were used for segmentation. Color histogram and Tamura’s texture feature were extracted. 


************************************************************************************************************************************
## Classifiers

*ANN, *DT*, SVM* and *Random Forest* learning models were built respectively. 


****************************************************************************************************************************************
## Performance evaluation
Experiments and evaluations is based on the: 

# different segmentations, 
# feature extractions and 
# classification methods were done to find the most effective approach. 

*****************************************************************************************************************************************
## Reported average accuracy
The higest average accuracy is **96.8%**. 


******************************************************************************************************************************************
## Model Implementation 
The application was mainly built with *Matlab* and *Java*. 

******************* Repository Stracture *******************************************

The main folders are three: 
(1) All-Used-Matlab-Codes

It entails all Matlab related codes used during the study, sub-folders include diseasetrain, imageshot, leaftrian, segleaf followed by the main scripts 

(2) Android
It has android application folder (folder with android App), Matlab program for Android application folder, and folder for the server.

(3) Computer-based-software
It has all matlab codes needed to have the computer version of the model
