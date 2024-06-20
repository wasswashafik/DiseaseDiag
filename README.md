*********************************************************************************************************************************
## DiseaseDiag

This official repository details all codes used during the model implementation in the paper "**A Novel Hybrid Inception-Xception Convolutional
Neural Network for Efficient Plant Disease Classification and Detection**" published in "**Phytopathology Research**."
DiseaseDiag is a model designed to implement *computer-based software* and *Android* mobile applications that can automatically 
identify the plant leaf diseases based on their appearance using **machine learning** and **computer vision** techniques. 

***********************************************************************************************************************************
## Abstract
Background: Plants are essential at all stages of living things. Plant pests, diseases, and symptoms are most regularly visible in plant leaves and fruits, and sometimes within the roots, yet their diagnosis by experts in the laboratory is expensive, tedious, and time-consuming if the samples involve laboratory analysis. Failure to detect early plant symptoms and diseases is the core biotic cause of increased plant stresses, structure, health, reduced subsistence farming, and threat to global food security. To mitigate these problems at a social, economic, and environmental level, inappropriate herbicide application reduction, early plant disease detection and classification (PDDC) is a significant solution in this case. Transfer learning techniques advancement has availed effective results in smart farming and has become extensively used in disease identification and classification research studies. Methodology: This study presents a novel hybrid Inception-Xception (IX) using a Convolution Neural Network (CNN). The presented model combines inception and depth-separable convolution layers to capture multiple-scale features while reducing model complexity and overfitting. In contrast to ordinary CNN architectures, it extends the network for better feature extraction, improving PDDC performance that demands diverse feature competencies. Expected maximization (EM) segmentation and Otsu algorithms separated the plant leaf from the background. Furthermore, a real-time artificial intelligence (AI) application is available in MATLAB, Android, and Servlet to automatically identify and classify diseases based on the leaf environment using improved CNN, machine learning (ML), and computer vision (CV) techniques. Results: To assess the presented IX-CNN model performance, different classifiers, namely, Decision Tree (DT), Support vector machine (SVM), Random Forest (RF), and K-Nearest Neighbours (KNN), were used. The experiments used seven datasets, including PlantVillage, Turkey Disease, IPM, Plant Doc, Rice Disease, RoCole, and NLB datasets. IPM, PlantVillage, and Turkey Disease datasets demonstrated an accuracy of 100%, yet Plant Doc, Rice Disease, RoCole, and NLB attained an accuracy of 99.79%, 99.95%, 98.64%, and 96.46%, respectively.


***********************************************************************************************************************************
## Target audience

The target group of the user is those farmers who request need to request and quickly get to understand the common leaf disease 
at any time of the day at the farm level. 
A computer-based version is also designed to aid plant pathologists in having rapid process compared to the traditional process of taking 
samples to the lab that consumes time.


************************************************************************************************************************************
## Used Algoriths 

(1) EM and Otsu algorithms were used for segmentation. 
(2) Color histogram and Tamura’s texture feature were extracted. 


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
The highest average accuracy is 100% on 3 datasets(IPM, PlantVillage, and Turkey Disease datasets ), and Plant Doc, Rice Disease, RoCole, and NLB attained an accuracy of 99.79%, 99.95%, 98.64%, 96.46%, respectively. 

******************************************************************************************************************************************
## Model Implementation 
The application was mainly built with *Matlab*, *Andriod* and *Java*. 

***********************************************************************************************************************************************
## Repository Structure
The main folders are:
(1) All-Used-Matlab-Codes

It entails all Matlab-related codes used during the study; sub-folders include disease train, image shot, leaftrian, segleaf followed by the main scripts. 

(2) Android
It has android application folder (folder with android App), Matlab program for Android application folder, and folder for the server.

(3) Computer-based-software
It has all matlab codes needed to have the computer version of the model

In case there is a problem with the code, and you need help understanding it, reach out to me at wasswashafik [@] dcrlab [dot] org
