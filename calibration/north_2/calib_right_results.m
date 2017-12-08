% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1366.649566107952523 ; 1363.280369970840184 ];

%-- Principal point:
cc = [ 333.250464228745557 ; 229.020905875469111 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.376931112667030 ; 1.680251586828655 ; -0.000753029675350 ; 0.001649233125018 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 11.505795154051350 ; 11.160323368095900 ];

%-- Principal point uncertainty:
cc_error = [ 14.037183720941375 ; 11.016242324477524 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.060009239574820 ; 1.075053138688669 ; 0.001312205193380 ; 0.001581399519024 ; 0.000000000000000 ];

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
omc_1 = [ -2.071501e+00 ; -2.172725e+00 ; 1.770749e-01 ];
Tc_1  = [ -8.207463e+01 ; -9.019264e+01 ; 7.154254e+02 ];
omc_error_1 = [ 8.026441e-03 ; 7.450893e-03 ; 1.560355e-02 ];
Tc_error_1  = [ 7.371717e+00 ; 5.797133e+00 ; 6.068456e+00 ];

%-- Image #2:
omc_2 = [ 2.170084e+00 ; 2.180922e+00 ; 1.381990e-01 ];
Tc_2  = [ -1.159075e+02 ; -6.931159e+01 ; 6.567318e+02 ];
omc_error_2 = [ 8.201686e-03 ; 8.267475e-03 ; 1.691654e-02 ];
Tc_error_2  = [ 6.781555e+00 ; 5.358854e+00 ; 5.696414e+00 ];

%-- Image #3:
omc_3 = [ 2.576009e+00 ; 1.498204e+00 ; 2.242197e-02 ];
Tc_3  = [ -1.141017e+02 ; -1.456362e+01 ; 6.520748e+02 ];
omc_error_3 = [ 8.421812e-03 ; 5.391615e-03 ; 1.653679e-02 ];
Tc_error_3  = [ 6.722796e+00 ; 5.295819e+00 ; 5.625726e+00 ];

%-- Image #4:
omc_4 = [ 2.453383e+00 ; 1.675900e+00 ; -6.838538e-01 ];
Tc_4  = [ -1.636931e+02 ; -1.111938e+01 ; 7.146432e+02 ];
omc_error_4 = [ 5.784136e-03 ; 8.034465e-03 ; 1.536831e-02 ];
Tc_error_4  = [ 7.368553e+00 ; 5.854558e+00 ; 6.023327e+00 ];

%-- Image #5:
omc_5 = [ -1.945996e+00 ; -1.933650e+00 ; 4.747199e-01 ];
Tc_5  = [ -1.033174e+02 ; -7.120924e+01 ; 7.006112e+02 ];
omc_error_5 = [ 8.539235e-03 ; 6.629234e-03 ; 1.279643e-02 ];
Tc_error_5  = [ 7.223673e+00 ; 5.693366e+00 ; 5.664436e+00 ];

%-- Image #6:
omc_6 = [ -1.905026e+00 ; -1.895118e+00 ; -2.597542e-01 ];
Tc_6  = [ -1.163695e+02 ; -4.946298e+01 ; 6.456332e+02 ];
omc_error_6 = [ 6.331372e-03 ; 8.147839e-03 ; 1.280825e-02 ];
Tc_error_6  = [ 6.643079e+00 ; 5.256604e+00 ; 5.784044e+00 ];

%-- Image #7:
omc_7 = [ 1.697332e+00 ; 2.605591e+00 ; 2.833954e-01 ];
Tc_7  = [ -9.156708e+01 ; -1.018728e+02 ; 6.439908e+02 ];
omc_error_7 = [ 6.784015e-03 ; 8.986912e-03 ; 1.502273e-02 ];
Tc_error_7  = [ 6.654906e+00 ; 5.268659e+00 ; 5.705696e+00 ];

%-- Image #8:
omc_8 = [ 1.939925e+00 ; 2.012718e+00 ; 4.934468e-01 ];
Tc_8  = [ -9.214120e+01 ; -4.857428e+01 ; 5.827416e+02 ];
omc_error_8 = [ 8.247987e-03 ; 6.452996e-03 ; 1.256519e-02 ];
Tc_error_8  = [ 6.000748e+00 ; 4.743290e+00 ; 5.116858e+00 ];

%-- Image #9:
omc_9 = [ -2.153236e+00 ; -1.345263e+00 ; 5.571957e-01 ];
Tc_9  = [ -1.413983e+02 ; -3.629591e+01 ; 6.975238e+02 ];
omc_error_9 = [ 9.300697e-03 ; 5.495349e-03 ; 1.246908e-02 ];
Tc_error_9  = [ 7.210583e+00 ; 5.696411e+00 ; 5.604297e+00 ];

