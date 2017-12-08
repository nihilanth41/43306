% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1424.387142070369237 ; 1417.022008718184679 ];

%-- Principal point:
cc = [ 260.657483543811281 ; 244.551518992580469 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.326532016748346 ; 4.096493768703179 ; 0.000297396786073 ; -0.014842998919672 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 36.063681371852923 ; 35.208181557547270 ];

%-- Principal point uncertainty:
cc_error = [ 37.752442517106395 ; 25.515023239651644 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.211152366032520 ; 5.209646501409983 ; 0.004992882623072 ; 0.005671997920055 ; 0.000000000000000 ];

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
omc_1 = [ -2.094833e+00 ; -2.092741e+00 ; 2.605081e-01 ];
Tc_1  = [ -5.868535e+01 ; -9.528807e+01 ; 7.247128e+02 ];
omc_error_1 = [ 1.997043e-02 ; 1.761422e-02 ; 3.728516e-02 ];
Tc_error_1  = [ 1.931732e+01 ; 1.303707e+01 ; 1.780419e+01 ];

%-- Image #2:
omc_2 = [ 2.138640e+00 ; 2.163291e+00 ; -6.137353e-01 ];
Tc_2  = [ -6.683984e+01 ; -8.209927e+01 ; 7.079342e+02 ];
omc_error_2 = [ 1.157381e-02 ; 2.031518e-02 ; 3.687170e-02 ];
Tc_error_2  = [ 1.886292e+01 ; 1.269554e+01 ; 1.693986e+01 ];

%-- Image #3:
omc_3 = [ -2.146718e+00 ; -1.682884e+00 ; 4.969876e-01 ];
Tc_3  = [ -6.701299e+01 ; -5.645924e+01 ; 7.121650e+02 ];
omc_error_3 = [ 2.014402e-02 ; 1.420901e-02 ; 3.193132e-02 ];
Tc_error_3  = [ 1.893965e+01 ; 1.280617e+01 ; 1.672990e+01 ];

%-- Image #4:
omc_4 = [ -1.773646e+00 ; -2.541452e+00 ; -2.101921e-01 ];
Tc_4  = [ -4.142211e+01 ; -1.088062e+02 ; 6.462024e+02 ];
omc_error_4 = [ 1.552426e-02 ; 2.485506e-02 ; 4.354276e-02 ];
Tc_error_4  = [ 1.725800e+01 ; 1.164057e+01 ; 1.640705e+01 ];

%-- Image #5:
omc_5 = [ 2.126657e+00 ; 2.091817e+00 ; 2.647379e-01 ];
Tc_5  = [ -6.740303e+01 ; -7.778316e+01 ; 6.180510e+02 ];
omc_error_5 = [ 2.062913e-02 ; 1.831291e-02 ; 3.776115e-02 ];
Tc_error_5  = [ 1.648572e+01 ; 1.111996e+01 ; 1.566681e+01 ];

%-- Image #6:
omc_6 = [ 2.122344e+00 ; 2.193652e+00 ; -2.373997e-01 ];
Tc_6  = [ -6.687841e+01 ; -8.130163e+01 ; 6.701630e+02 ];
omc_error_6 = [ 1.698136e-02 ; 2.121731e-02 ; 3.846109e-02 ];
Tc_error_6  = [ 1.783200e+01 ; 1.204796e+01 ; 1.660903e+01 ];

%-- Image #7:
omc_7 = [ 1.989287e+00 ; 2.056099e+00 ; -7.806355e-01 ];
Tc_7  = [ -7.233754e+01 ; -6.637432e+01 ; 6.997087e+02 ];
omc_error_7 = [ 1.056294e-02 ; 2.118898e-02 ; 3.421908e-02 ];
Tc_error_7  = [ 1.861964e+01 ; 1.255373e+01 ; 1.645474e+01 ];

%-- Image #8:
omc_8 = [ -2.180502e+00 ; -1.643108e+00 ; 4.967404e-01 ];
Tc_8  = [ -8.124834e+01 ; -5.628948e+01 ; 7.157367e+02 ];
omc_error_8 = [ 2.050581e-02 ; 1.382296e-02 ; 3.263948e-02 ];
Tc_error_8  = [ 1.905424e+01 ; 1.287789e+01 ; 1.686569e+01 ];

%-- Image #9:
omc_9 = [ -2.169528e+00 ; -1.876540e+00 ; -3.672139e-01 ];
Tc_9  = [ -7.788185e+01 ; -5.182689e+01 ; 6.174211e+02 ];
omc_error_9 = [ 1.428764e-02 ; 1.863779e-02 ; 3.702518e-02 ];
Tc_error_9  = [ 1.643246e+01 ; 1.109563e+01 ; 1.617781e+01 ];

