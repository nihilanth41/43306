% Load calibration
load('north_projection.mat');

% ACTIVATE DEFEND POSITION
% Use all joints = 30 degrees for now 
defend_angles = [ 30 30 30 30 30 30 ]; 
sprintf
system(puma_move_joints(


%Take image(s) {left01.ppm, right01.ppm} and put them in CWD. 
[status, result] = system('./snapshot.sh');
if(1 == status) % Check for error
    % Sleep and try again.
end

% Read image specified by 'filename'.
img_l = imread('./left01.ppm');
img_r = imread('./right01.ppm');

% Convert left & right to greyscale.
I_l = rgb2gray(img_l);
I_r = rgb2gray(img_r);

% Binarize image using grey threshold 'level'.
level = 0.95;
bin_l = imbinarize(I_l,level);
bin_r = imbinarize(I_r,level);

% Perform edge detection using Canny algorithm.
threshold = 0.98;
[BW_l,threshold_l] = edge(bin_l, 'Canny', threshold);
[BW_r,threshold_r] = edge(bin_r, 'Canny', threshold);

% Assign labels for detected objects.
L_l = bwlabel(BW_l);
L_r = bwlabel(BW_r);

% Orientation is angle w.r.t. x-axis
stats_l = regionprops(L_l, 'Centroid', 'Orientation', 'Area');
stats_r = regionprops(L_r, 'Centroid', 'Orientation', 'Area');

% Assuming one object for now - only take 1st row.
centroids_l = cat(1, stats_l.Centroid);
centroids_r = cat(1, stats_r.Centroid);
u_l = centroids_l(1,1);
v_l = centroids_l(1,2);
u_r = centroids_r(1,1);
v_r = centroids_r(1,2);

% P_wo is XYZ of object w.r.t world (Camera).
P_wo = reconstruct3d(u_l, v_l, u_r, v_r, P_left, P_right);
P_wo(4,1) = 1;  % Make 4x1 vector

% Homogenous transformation of world w.r.t robot. 
% I.e. position of camera frame w.r.t robot frame. 
% I.e. steps to move the robot frame to the camera frame w.r.t robot frame.
tx = 305; % mm
ty = 358; % mm 
tz = 312; % mm - (325-13)
H_rw = [ 0 -1 0 tx;
         1  0 0 ty;
         0  0 1 tz;
         0  0 0 1 ];

%P_ro - Position of object with respect to the robot. 
P_ro = H_rw*P_wo


