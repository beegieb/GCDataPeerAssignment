All variables in the dataset have the form:

*var-name*\_*coord*\_*type*

where, 
- *var-name* is the name of the feature
- *coord* is X, Y, Z or NA depending on the sensor coordinate axis (or NA if not applicable)
- *type* is either mean or std

The var-names used in this dataset are described below:

tBodyAcc - The body's linear acceleration (m / s**2)
tGravityAcc - The acceleration due to gravity (m / s**2)
tBodyAccJerk - The change in body's linear acceleration (m / s**3)
tBodyGyro - The gyroscope orientation of the body 
tBodyGyroJerk - The change in gyroscope orientation over time
tBodyAccMag - The magnitude of body's linear acceleration (euclidean norm)
tGravityAccMag - The magnitude of gravity's acceleration (euclidean norm)
tBodyAccJerkMag - The magnitude of body's change in linear ecceleration
tBodyGyroMag - The magnitude of the gyroscope's orientation
tBodyGyroJerkMag - The magnitude of the gyroscope's change in orientation

Other features prefixed with an 'f' are the fourier transform of the above
signals. These include:

fBodyAcc - The fourier transform of the body's acceleration signal
fBodyAccJerk - The fourier transform of the body's jerk signal
fBodyGyro - The fourier transform of the body's gyroscope signal
fBodyAccMag - The fourier transform of the body's acceleration magnitude 
fBodyBodyAccJerkMag - The fourier transform of the body's jerk magnitude
fBodyBodyGyroMag - The fourier transform of the gyroscopes' magnitude signal
fBodyBodyGyroJerkMag - The fourier transform of the gyroscopes' jerk signal