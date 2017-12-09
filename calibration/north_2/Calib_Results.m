% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1365.002740085951700 ; 1361.672690898063365 ];

%-- Principal point:
cc = [ 332.309005401382421 ; 229.524168487579544 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.370576421833928 ; 1.640959545470047 ; -0.000869739002552 ; 0.001794975353611 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 11.254163325209767 ; 10.916860184524509 ];

%-- Principal point uncertainty:
cc_error = [ 13.730065531553290 ; 10.794401929979927 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.059029382432589 ; 1.063048777394688 ; 0.001294055377083 ; 0.001545980057224 ; 0.000000000000000 ];

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
omc_1 = [ -2.071210e+00 ; -2.172516e+00 ; 1.770530e-01 ];
Tc_1  = [ -8.158719e+01 ; -9.045704e+01 ; 7.146905e+02 ];
omc_error_1 = [ 7.865380e-03 ; 7.302179e-03 ; 1.528662e-02 ];
Tc_error_1  = [ 7.211677e+00 ; 5.680947e+00 ; 5.934890e+00 ];

%-- Image #2:
omc_2 = [ 2.170542e+00 ; 2.181321e+00 ; 1.373768e-01 ];
Tc_2  = [ -1.154584e+02 ; -6.955597e+01 ; 6.560700e+02 ];
omc_error_2 = [ 8.028922e-03 ; 8.096032e-03 ; 1.658998e-02 ];
Tc_error_2  = [ 6.634421e+00 ; 5.251632e+00 ; 5.571675e+00 ];

%-- Image #3:
omc_3 = [ 2.576370e+00 ; 1.498461e+00 ; 2.182983e-02 ];
Tc_3  = [ -1.136516e+02 ; -1.480558e+01 ; 6.513859e+02 ];
omc_error_3 = [ 8.240111e-03 ; 5.273308e-03 ; 1.619750e-02 ];
Tc_error_3  = [ 6.576775e+00 ; 5.189494e+00 ; 5.501082e+00 ];

%-- Image #4:
omc_4 = [ 2.453652e+00 ; 1.676385e+00 ; -6.844252e-01 ];
Tc_4  = [ -1.632057e+02 ; -1.138351e+01 ; 7.139719e+02 ];
omc_error_4 = [ 5.674718e-03 ; 7.879381e-03 ; 1.505939e-02 ];
Tc_error_4  = [ 7.209169e+00 ; 5.737930e+00 ; 5.890614e+00 ];

%-- Image #5:
omc_5 = [ -1.945431e+00 ; -1.933288e+00 ; 4.748441e-01 ];
Tc_5  = [ -1.028427e+02 ; -7.146784e+01 ; 6.999268e+02 ];
omc_error_5 = [ 8.366821e-03 ; 6.493090e-03 ; 1.253820e-02 ];
Tc_error_5  = [ 7.067090e+00 ; 5.579544e+00 ; 5.539356e+00 ];

%-- Image #6:
omc_6 = [ -1.904688e+00 ; -1.894576e+00 ; -2.594453e-01 ];
Tc_6  = [ -1.159255e+02 ; -4.970014e+01 ; 6.449504e+02 ];
omc_error_6 = [ 6.211922e-03 ; 7.985053e-03 ; 1.254953e-02 ];
Tc_error_6  = [ 6.498797e+00 ; 5.151140e+00 ; 5.656078e+00 ];

%-- Image #7:
omc_7 = [ 1.697804e+00 ; 2.606124e+00 ; 2.830301e-01 ];
Tc_7  = [ -9.112548e+01 ; -1.021136e+02 ; 6.433105e+02 ];
omc_error_7 = [ 6.648497e-03 ; 8.811898e-03 ; 1.473671e-02 ];
Tc_error_7  = [ 6.510222e+00 ; 5.163155e+00 ; 5.580768e+00 ];

%-- Image #8:
omc_8 = [ 1.940584e+00 ; 2.013209e+00 ; 4.931948e-01 ];
Tc_8  = [ -9.174026e+01 ; -4.878942e+01 ; 5.820983e+02 ];
omc_error_8 = [ 8.077349e-03 ; 6.316293e-03 ; 1.232210e-02 ];
Tc_error_8  = [ 5.869969e+00 ; 4.648007e+00 ; 5.004152e+00 ];

%-- Image #9:
omc_9 = [ -2.152540e+00 ; -1.344907e+00 ; 5.578900e-01 ];
Tc_9  = [ -1.408983e+02 ; -3.655299e+01 ; 6.967608e+02 ];
omc_error_9 = [ 9.118004e-03 ; 5.382925e-03 ; 1.221478e-02 ];
Tc_error_9  = [ 7.053653e+00 ; 5.581871e+00 ; 5.478810e+00 ];

