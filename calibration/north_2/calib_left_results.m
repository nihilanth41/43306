% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1402.874544697642705 ; 1401.129916802308344 ];

%-- Principal point:
cc = [ 358.542797536069259 ; 209.371692337386776 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.352878545721356 ; 1.497601523025976 ; -0.002746070681062 ; 0.001382287972334 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 9.296241537948310 ; 8.970927435740066 ];

%-- Principal point uncertainty:
cc_error = [ 12.150991067446817 ; 9.696393471869548 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.047021408286486 ; 0.902077868788151 ; 0.001164908293060 ; 0.001333464449342 ; 0.000000000000000 ];

%-- Image size:
nx = 640;
ny = 480;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 9;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 2.061833e+00 ; 2.167881e+00 ; 2.070760e-01 ];
Tc_1  = [ -8.067027e+01 ; -7.895194e+01 ; 6.944367e+02 ];
omc_error_1 = [ 6.702125e-03 ; 6.618096e-03 ; 1.337365e-02 ];
Tc_error_1  = [ 6.032781e+00 ; 4.824430e+00 ; 4.544976e+00 ];

%-- Image #2:
omc_2 = [ 1.940584e+00 ; 1.959898e+00 ; 4.795322e-01 ];
Tc_2  = [ -9.082948e+01 ; -5.919283e+01 ; 6.277442e+02 ];
omc_error_2 = [ 6.913905e-03 ; 5.581422e-03 ; 1.075226e-02 ];
Tc_error_2  = [ 5.453209e+00 ; 4.371022e+00 ; 4.170121e+00 ];

%-- Image #3:
omc_3 = [ 2.376855e+00 ; 1.341278e+00 ; 4.649069e-01 ];
Tc_3  = [ -8.645401e+01 ; -4.532099e+00 ; 6.214125e+02 ];
omc_error_3 = [ 7.561810e-03 ; 3.830909e-03 ; 1.165603e-02 ];
Tc_error_3  = [ 5.394201e+00 ; 4.312094e+00 ; 4.119028e+00 ];

%-- Image #4:
omc_4 = [ 2.384916e+00 ; 1.521387e+00 ; -2.171894e-01 ];
Tc_4  = [ -1.568362e+02 ; -2.727572e-01 ; 6.643565e+02 ];
omc_error_4 = [ 6.138122e-03 ; 5.621413e-03 ; 1.128640e-02 ];
Tc_error_4  = [ 5.768054e+00 ; 4.660017e+00 ; 4.453978e+00 ];

%-- Image #5:
omc_5 = [ -2.169518e+00 ; -2.159034e+00 ; 1.285573e-01 ];
Tc_5  = [ -9.491672e+01 ; -6.043783e+01 ; 6.726762e+02 ];
omc_error_5 = [ 7.067288e-03 ; 6.597754e-03 ; 1.364767e-02 ];
Tc_error_5  = [ 5.831154e+00 ; 4.674402e+00 ; 4.340979e+00 ];

%-- Image #6:
omc_6 = [ -1.968194e+00 ; -2.134843e+00 ; -6.481967e-01 ];
Tc_6  = [ -8.661126e+01 ; -3.946383e+01 ; 6.149823e+02 ];
omc_error_6 = [ 4.165459e-03 ; 7.646888e-03 ; 1.202635e-02 ];
Tc_error_6  = [ 5.325400e+00 ; 4.277939e+00 ; 4.277194e+00 ];

%-- Image #7:
omc_7 = [ 1.467692e+00 ; 2.325118e+00 ; 5.153227e-01 ];
Tc_7  = [ -6.383469e+01 ; -9.196079e+01 ; 6.265843e+02 ];
omc_error_7 = [ 6.091155e-03 ; 6.938184e-03 ; 9.986627e-03 ];
Tc_error_7  = [ 5.444956e+00 ; 4.364196e+00 ; 4.192704e+00 ];

%-- Image #8:
omc_8 = [ 1.683247e+00 ; 1.769123e+00 ; 7.744719e-01 ];
Tc_8  = [ -4.105711e+01 ; -3.951665e+01 ; 5.668060e+02 ];
omc_error_8 = [ 7.748548e-03 ; 5.821980e-03 ; 9.436769e-03 ];
Tc_error_8  = [ 4.903875e+00 ; 3.927716e+00 ; 3.856277e+00 ];

%-- Image #9:
omc_9 = [ -2.357304e+00 ; -1.542199e+00 ; 1.611380e-01 ];
Tc_9  = [ -1.291574e+02 ; -2.587906e+01 ; 6.554307e+02 ];
omc_error_9 = [ 7.206613e-03 ; 4.662340e-03 ; 1.192489e-02 ];
Tc_error_9  = [ 5.686009e+00 ; 4.571044e+00 ; 4.098875e+00 ];

