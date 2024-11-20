# Project Name

### Project Description: 
Surface crack detection in concrete structures using image processing techniques like edge detection and thresholding
#### Summary - 
The workflow begins with preprocessing steps, including grayscale conversion and Gaussian blurring, to minimize noise while preserving essential features. 
Contrast enhancement and Otsu’s thresholding are applied to highlight cracks based on intensity differences, complemented by Canny edge detection to extract edge-based features. 
Morphological operations are employed to ensure crack continuity and fill small gaps, while area-based filtering eliminates noise and irrelevant small objects. Finally, connected component labeling quantifies the detected cracks. 
The method demonstrates a synergistic approach by fusing intensity-based and edge-based techniques, offering an efficient and adaptable solution for crack detection in various contexts.


#### Course concepts used - 
1. - Edge detection
2. - Morphological operations

   
#### Additional concepts used -
1. - Otsu's thresholding

#### Novelty - 
1. - combining edge detection and thresholding techniques like otsu's thresholding
2. - using morphological operations for analysing cracks
   
### Contributors:
1. Shivani S(PES1UG22EC274)
2. Sanjana(PES1UG22EC258)

### Outputs:

* ![image](https://github.com/user-attachments/assets/7a0379b1-e4a9-471e-9ee9-dd89373148ac)


### References:
1. - Review of Microcrack Detection Techniques for Silicon Solar Cells," in IEEE Journal of Photovoltaics, vol. 4, no. 1, pp. 514-524, Jan. 2014, doi: 10.1109/JPHOTOV.2013.2285622.
2. - A Survey on Surface Crack Detection in Concretes using Traditional, Image Processing, Machine Learning, and Deep Learning Techniques," 2021 International Conference on Communication, Control and Information Sciences (ICCISc), Idukki, India, 2021, pp. 1-6, doi: 10.1109/ICCISc52257.2021.9484914.
   
### Limitations and Future Work:
Limitations

The algorithm's performance may degrade under poor lighting conditions, non-uniform illumination, or high noise levels. 
cracks with very low contrast compared to the background may go undetected.
For images with complex backgrounds or textures, the method may misclassify background patterns as cracks, leading to false positives.
Future work

Explore the use of convolutional neural networks (CNNs) or pre-trained models for better crack segmentation and adaptability to varying conditions and textures.
Optimize the code for real-time detection in applications such as drone-based crack inspection or automated industrial monitoring.
Implement automated parameter tuning using machine learning or optimization algorithms to improve generalizability across different datasets.
