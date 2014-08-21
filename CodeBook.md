CodeBook
===============================

The first two variables are as follows:
----------------------------------------------

subjects  
field witdth: 1-2  
Meaning: subjects who take the experiments   
There are 30 subjects taking the experiments  

labels  
field width: 6-18  
Meaning: labels for the 6 activities tested  

Other 66 variables are named based on the following rules:
-------------------------------------------------------------------------

"t" stands for time domain signals  
"f" stands for frequency domain signals  
"Acc" stands for acceleration, which means the data were obtained from accelerameter  
"Gyro" stands for gyroscope, which means the data were obtained from gyroscope  
"Body" stands for the measurements resulted from a subject's body movement  
"Gravity" stands for the measurements resulted from gravity  
"Jerk" stands for Jerk signals  
"mag" stands for magnitude of the signals  
"XYZ" stands for the data of the three axials, respectively  
"mean" stands for the average value  
"std" stands for the standard deviation  

The range for these variables is [-1, 1], unit is g (9.8 m/s^2).

Note: the following steps are done before I get this dataset:
--------------------------------------------------------------------------

1. Download the raw datasets from the Coursera web link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
2. Run the run_analysis.R code in this repo to these datasets to get the output data. 
