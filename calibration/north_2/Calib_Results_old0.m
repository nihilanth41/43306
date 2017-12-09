% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1400.013778589856429 ; 1398.377520571122204 ];

%-- Principal point:
cc = [ 357.852091255320715 ; 211.028840518252679 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.342372143943185 ; 1.417677019321289 ; -0.002986335219010 ; 0.001804065658549 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 8.949434760125474 ; 8.632485423968395 ];

%-- Principal point uncertainty:
cc_error = [ 11.681224245610190 ; 9.334628725755623 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.045526779451879 ; 0.877720008744127 ; 0.001133427902740 ; 0.001296810059810 ; 0.000000000000000 ];

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
omc_1 = [ 2.062543e+00 ; 2.168354e+00 ; 2.074062e-01 ];
Tc_1  = [ -8.033650e+01 ; -7.977527e+01 ; 6.930883e+02 ];
omc_error_1 = [ 6.431894e-03 ; 6.360930e-03 ; 1.290068e-02 ];
Tc_error_1  = [ 5.800344e+00 ; 4.644752e+00 ; 4.370010e+00 ];

%-- Image #2:
omc_2 = [ 1.941685e+00 ; 1.960466e+00 ; 4.801950e-01 ];
Tc_2  = [ -9.052948e+01 ; -5.993550e+01 ; 6.264890e+02 ];
omc_error_2 = [ 6.643766e-03 ; 5.369758e-03 ; 1.038421e-02 ];
Tc_error_2  = [ 5.242612e+00 ; 4.208124e+00 ; 4.010006e+00 ];

%-- Image #3:
omc_3 = [ 2.378070e+00 ; 1.341575e+00 ; 4.650755e-01 ];
Tc_3  = [ -8.615513e+01 ; -5.268158e+00 ; 6.202167e+02 ];
omc_error_3 = [ 7.260409e-03 ; 3.685271e-03 ; 1.125554e-02 ];
Tc_error_3  = [ 5.186301e+00 ; 4.151600e+00 ; 3.963519e+00 ];

%-- Image #4:
omc_4 = [ 2.385631e+00 ; 1.521950e+00 ; -2.171044e-01 ];
Tc_4  = [ -1.565109e+02 ; -1.063307e+00 ; 6.630786e+02 ];
omc_error_4 = [ 5.901334e-03 ; 5.408307e-03 ; 1.090236e-02 ];
Tc_error_4  = [ 5.545655e+00 ; 4.487030e+00 ; 4.283082e+00 ];

%-- Image #5:
omc_5 = [ -2.169350e+00 ; -2.159039e+00 ; 1.271370e-01 ];
Tc_5  = [ -9.459719e+01 ; -6.123217e+01 ; 6.713848e+02 ];
omc_error_5 = [ 6.825140e-03 ; 6.370098e-03 ; 1.317703e-02 ];
Tc_error_5  = [ 5.606541e+00 ; 4.500158e+00 ; 4.176306e+00 ];

%-- Image #6:
omc_6 = [ -1.967553e+00 ; -2.133729e+00 ; -6.488708e-01 ];
Tc_6  = [ -8.630884e+01 ; -4.018933e+01 ; 6.136905e+02 ];
omc_error_6 = [ 4.015775e-03 ; 7.357468e-03 ; 1.160380e-02 ];
Tc_error_6  = [ 5.118976e+00 ; 4.118278e+00 ; 4.111464e+00 ];

%-- Image #7:
omc_7 = [ 1.468603e+00 ; 2.325791e+00 ; 5.164097e-01 ];
Tc_7  = [ -6.353214e+01 ; -9.269985e+01 ; 6.252944e+02 ];
omc_error_7 = [ 5.859102e-03 ; 6.681167e-03 ; 9.637756e-03 ];
Tc_error_7  = [ 5.234395e+00 ; 4.201491e+00 ; 4.030152e+00 ];

%-- Image #8:
omc_8 = [ 1.684384e+00 ; 1.769408e+00 ; 7.752274e-01 ];
Tc_8  = [ -4.078148e+01 ; -4.018791e+01 ; 5.656253e+02 ];
omc_error_8 = [ 7.452398e-03 ; 5.611139e-03 ; 9.116599e-03 ];
Tc_error_8  = [ 4.714065e+00 ; 3.780815e+00 ; 3.709137e+00 ];

%-- Image #9:
omc_9 = [ -2.356551e+00 ; -1.542077e+00 ; 1.606636e-01 ];
Tc_9  = [ -1.288395e+02 ; -2.666087e+01 ; 6.541697e+02 ];
omc_error_9 = [ 6.958917e-03 ; 4.495849e-03 ; 1.150577e-02 ];
Tc_error_9  = [ 5.466957e+00 ; 4.400911e+00 ; 3.941752e+00 ];

