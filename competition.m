% Initialization
% Add subdirectories to path
addpath(genpath(pwd));

% Load calibration
%load('puma2_projection.mat');
load('puma1_projection.mat');

% Establish defend position

defend_angles = [ 85 0  90 0 90 175 ]; % upper
defend_angles = [ defend_angles; 85 35 58 0 87 175 ]; %lower

[defend_1_command_string, err] = sprintf('./Puma_API/movjoints.bin %0.3f %0.3f %0.3f %0.3f %0.3f %0.3f', defend_angles(1,1), defend_angles(1,2), defend_angles(1,3), defend_angles(1,4), defend_angles(1,5), defend_angles(1,6));
if( not(isempty(err)) ) 
    disp('sprintf error');
    return;
end

[defend_2_command_string, err] = sprintf('./Puma_API/movjoints.bin %0.3f %0.3f %0.3f %0.3f %0.3f %0.3f', defend_angles(2,1), defend_angles(2,2), defend_angles(2,3), defend_angles(2,4), defend_angles(2,5), defend_angles(2,6));
if( not(isempty(err)) ) 
    disp('sprintf error');
    return;
end

command_format_string='./Puma_API/movpos.bin %3.3f %3.3f %3.3f %3.3f %3.3f %3.3f';

%% Main Control Loop 
% while(1)
%     
%     while(
%     % ACTIVATE DEFEND POSITION
%     disp('Activating defend position...')
%     retval = system(defend_command_string); 
%     if(retval ~= 0) 
%         disp('Error movjoints()');
%         return;
%     end
% 
% end

% find objects
[stats_l, stats_r, BW_l, BW_r] = find_objects();

% Assuming one object for now - only take 1st row.
centroids_l = cat(1, stats_l.Centroid);
centroids_r = cat(1, stats_r.Centroid);

% Debugging object orientation
imshow(BW_l)
hold on 
plot(centroids_l(:,1),centroids_l(:,2), 'b*')
hold off
imshow(BW_r)
hold on 
plot(centroids_r(:,1),centroids_r(:,2), 'b*')
hold off

% match objects and return closest to middle
[index_l, index_r] = match_obj(stats_l, stats_r);

imshowpair(BW_l, BW_r)
hold on 
plot(centroids_l(index_l,1),centroids_l(index_l,2), 'b*')
plot(centroids_r(index_r,1),centroids_r(index_r,2), 'b*')
hold off


% finding centroid for object chosen
u_l = centroids_l(index_l,1);
v_l = centroids_l(index_l,2);
u_r = centroids_r(index_r,1);
v_r = centroids_r(index_r,2);

% P_wo is XYZ of object w.r.t world (Camera).
P_wo = reconstruct3d(u_l, v_l, u_r, v_r, P_left, P_right);
P_wo(4,1) = 1;  % Make 4x1 vector

% Homogenous transformation of world w.r.t robot. 
% I.e. position of camera frame w.r.t robot frame. 
% I.e. steps to move the robot frame to the camera frame w.r.t robot frame.
%tx = -400; % mm
tx = -200;
ty = 350; % mm 
tz = -312; % mm - (-325+13+(130?))

% new rotation matrix
H_rw = [ 1  0  0 tx;
         0 -1  0 ty;
         0  0 -1 tz;
         0  0  0 1 ];

%P_ro - Position of object with respect to the robot. 
P_ro = H_rw*P_wo

% From our 2nd lab report..we used O=90-obj , A=90, T=0
% Robot x and camera x are aligned
% Take stats_r.Orientation? Or use average?
O = stats_l(1).Orientation;
O = O-90;
A = 90.000;
T = 0.000;

mov_command = sprintf(command_format_string, P_ro(1), P_ro(2), P_ro(3), O, A, T);
disp(mov_command);


