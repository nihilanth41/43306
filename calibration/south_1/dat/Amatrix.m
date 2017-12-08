% Assign z-values 
%load('calib_left.mat');
load('calib_right.mat');

% construct matricies for constructing A matrix - instric & extrinsic
XYZ = [ X_1 X_2 X_3 X_4 X_5 X_6 X_7 X_8 X_9 ];
UV = [ x_1 x_2 x_3 x_4 x_5 x_6 x_7 x_8 x_9 ];

A=[];
for i = 1:length(XYZ) % foreach each column
    
A=[ A; 
    [ XYZ(1,i) XYZ(2,i) XYZ(3,i) 1 0 0 0 0 -UV(1,i)*XYZ(1,i) -UV(1,i)*XYZ(2,i) -UV(1,i)*XYZ(3,i) -UV(1,i); 
      0 0 0 0 XYZ(1,i) XYZ(2,i) XYZ(3,i) 1 -UV(2,i)*XYZ(1,i) -UV(2,i)*XYZ(2,i) -UV(2,i)*XYZ(3,i) -UV(2,i)
    ] 
   ];

end

[U,D,V] = svd(A); 
q = V(:, end);
P = reshape(q, [4,3])'; % ' == transpose()

%P_left = P;
%XYZ_left = XYZ;
%UV_left = UV;
%save('puma1_projection_left.mat', 'P_left', 'XYZ_left', 'UV_left');

P_right = P;
XYZ_right = XYZ;
UV_right = UV;
save('puma1_projection_right.mat', 'P_right', 'XYZ_right', 'UV_right');
