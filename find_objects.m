function [ stats_l, stats_r, BW_l, BW_r ] = find_objects(  )
%FIND_OBJECTS Summary of this function goes here
%   Detailed explanation goes here

img_rows = 480;
img_cols = 640;
left_border_width = 85;
right_border_width = 40;
top_border_width = 20;
bottom_border_width = 20;

%Take image(s) {left01.ppm, right01.ppm} and put them in CWD. 
%status = system('calibration/north_2/snapshot.sh');
status = system('calibration/north_2/snapshot.sh');
if(status ~= 0) % Check for error
    disp('Error snapshot.sh');
    % Sleep and try again.
end

% Read image specified by 'filename'.
img_l = imread('./left02.ppm');%%%%%%%%%%%%%%%%%%%%%%%%%%
img_r = imread('./right02.ppm');%%%%%%%%%%%%%%%%%%%%%%%%%
imshow(img_l);
imshow(img_r);
% Convert left & right to greyscale.
I_l = rgb2gray(img_l);
I_r = rgb2gray(img_r);

% Binarize image using grey threshold 'level'.
level = 0.95;
bin_l = imbinarize(I_l,level);
bin_r = imbinarize(I_r,level);

% erode
se = strel('rectangle',[20 20]);
im_erode_l = imerode(bin_l,se);
im_erode_r = imerode(bin_r,se);
% dilate
im_dilate_l = imdilate(im_erode_l,se);
im_dilate_r = imdilate(im_erode_r,se);

% Perform edge detection using Canny algorithm.
threshold = 0.98;
[BW_l,threshold_l] = edge(im_dilate_l, 'Canny', threshold);
[BW_r,threshold_r] = edge(im_dilate_r, 'Canny', threshold);

%ignore edges of picture
for i = 1:img_rows
    for j = 1:img_cols
        if (i < top_border_width) || (i > (img_rows - bottom_border_width))
            BW_l(i,j) = 0;
            BW_r(i,j) = 0;
        end
        if (j < left_border_width) || (j > (img_cols - right_border_width))
            BW_l(i,j) = 0;
            BW_r(i,j) = 0;
        end
    end
end

imshowpair(BW_l, BW_r);

% Assign labels for detected objects.
L_l = bwlabel(BW_l);
L_r = bwlabel(BW_r);

% Orientation is angle w.r.t. x-axis
stats_l = regionprops(L_l, 'Centroid', 'Orientation', 'Area');
stats_r = regionprops(L_r, 'Centroid', 'Orientation', 'Area');

end

