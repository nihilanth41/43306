function [ P_ro, O, A, T, valid ] = object_check( )
%OBJECT_CHECK Summary of this function goes here
%   Detailed explanation goes here
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

if (index_l == 0) || (index_r == 0)
    valid = 0;
    return
end

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
P_ro = H_rw*P_wo;

% From our 2nd lab report..we used O=90-obj , A=90, T=0
% Robot x and camera x are aligned
% Take stats_r.Orientation? Or use average?
O = stats_l(1).Orientation;
O = O-90;
A = 90.000;
T = 0.000;

valid = 1;

end

