% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1374.203956216446613 ; 1372.076835754108970 ];

%-- Principal point:
cc = [ 344.365386710333041 ; 266.972164194977211 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.142198831652482 ; 1.538037647937907 ; 0.004938695634740 ; 0.001318828216911 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 10.647284503075939 ; 10.532245777716291 ];

%-- Principal point uncertainty:
cc_error = [ 10.757797666069226 ; 8.463686154536568 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.065610824464322 ; 1.606059913962955 ; 0.001989297439087 ; 0.002117552890660 ; 0.000000000000000 ];

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
omc_1 = [ 2.130750e+00 ; 2.132857e+00 ; 2.312104e-01 ];
Tc_1  = [ -7.833557e+01 ; -9.527275e+01 ; 6.689200e+02 ];
omc_error_1 = [ 6.090194e-03 ; 5.822438e-03 ; 1.122032e-02 ];
Tc_error_1  = [ 5.278896e+00 ; 4.139977e+00 ; 5.126373e+00 ];

%-- Image #2:
omc_2 = [ 2.037304e+00 ; 1.924926e+00 ; -1.149923e-01 ];
Tc_2  = [ -7.921515e+01 ; -8.214910e+01 ; 6.526811e+02 ];
omc_error_2 = [ 5.067399e-03 ; 6.032314e-03 ; 1.044026e-02 ];
Tc_error_2  = [ 5.129813e+00 ; 4.034932e+00 ; 4.809463e+00 ];

%-- Image #3:
omc_3 = [ -2.380978e+00 ; -1.896424e+00 ; 1.232854e-02 ];
Tc_3  = [ -8.081782e+01 ; -5.649207e+01 ; 6.551992e+02 ];
omc_error_3 = [ 6.189320e-03 ; 5.134379e-03 ; 1.331535e-02 ];
Tc_error_3  = [ 5.140691e+00 ; 4.051641e+00 ; 4.886221e+00 ];

%-- Image #4:
omc_4 = [ 1.554050e+00 ; 2.290951e+00 ; 5.320548e-01 ];
Tc_4  = [ -3.041032e+01 ; -1.088626e+02 ; 6.079899e+02 ];
omc_error_4 = [ 5.640297e-03 ; 6.191970e-03 ; 9.102344e-03 ];
Tc_error_4  = [ 4.797769e+00 ; 3.758367e+00 ; 4.808089e+00 ];

%-- Image #5:
omc_5 = [ 1.859174e+00 ; 1.828847e+00 ; 6.531196e-01 ];
Tc_5  = [ -4.189470e+01 ; -7.751879e+01 ; 5.710234e+02 ];
omc_error_5 = [ 6.663448e-03 ; 5.308804e-03 ; 8.977499e-03 ];
Tc_error_5  = [ 4.494821e+00 ; 3.523843e+00 ; 4.549257e+00 ];

%-- Image #6:
omc_6 = [ 1.944271e+00 ; 1.936251e+00 ; 2.235723e-01 ];
Tc_6  = [ -6.268931e+01 ; -8.115191e+01 ; 6.175315e+02 ];
omc_error_6 = [ 5.713838e-03 ; 5.704789e-03 ; 9.708042e-03 ];
Tc_error_6  = [ 4.858358e+00 ; 3.814499e+00 ; 4.691552e+00 ];

%-- Image #7:
omc_7 = [ 1.947309e+00 ; 1.798562e+00 ; -3.014441e-01 ];
Tc_7  = [ -8.060940e+01 ; -6.635911e+01 ; 6.430580e+02 ];
omc_error_7 = [ 4.679636e-03 ; 6.138257e-03 ; 9.801445e-03 ];
Tc_error_7  = [ 5.047354e+00 ; 3.974060e+00 ; 4.591882e+00 ];

%-- Image #8:
omc_8 = [ -2.413872e+00 ; -1.852413e+00 ; 4.834678e-03 ];
Tc_8  = [ -9.540851e+01 ; -5.636663e+01 ; 6.528963e+02 ];
omc_error_8 = [ 6.216669e-03 ; 4.849256e-03 ; 1.339312e-02 ];
Tc_error_8  = [ 5.123358e+00 ; 4.041924e+00 ; 4.879078e+00 ];

%-- Image #9:
omc_9 = [ 2.179077e+00 ; 2.040957e+00 ; 8.828055e-01 ];
Tc_9  = [ -5.108779e+01 ; -5.170648e+01 ; 5.652223e+02 ];
omc_error_9 = [ 7.750193e-03 ; 3.690702e-03 ; 1.038279e-02 ];
Tc_error_9  = [ 4.443211e+00 ; 3.489280e+00 ; 4.517618e+00 ];

