function [ index_l, index_r ] = match_obj( stats_l, stats_r )
%MATCH_OBJ Summary of this function goes here
%   Detailed explanation goes here

middle_x = 320;
middle_y = 240;
least_distance = 1000000;
index_l = 0;
index_r = 0;
max_area_diff = 100;
max_orient_diff = 10;
max_loco_diff = 100;

num_of_stats_l = size(stats_l);
num_of_stats_r = size(stats_r);
match = zeros(size(stats_l));

for i = 1:num_of_stats_l    %go through each element in left
    
    for j = 1:num_of_stats_r    %compare each left element with each right element
        area_diff = abs(stats_l(i).Area - stats_r(j).Area);
        
        if area_diff < max_area_diff   %check for matching area
            orient_diff = abs(stats_l(i).Orientation - stats_r(j).Orientation);
            
            if orient_diff < max_orient_diff     %check for matching orientation
                l_loco_x = stats_l(i).Centroid(1);
                r_loco_x = stats_r(j).Centroid(1);
                locodiff_x = abs(r_loco_x - l_loco_x);
                l_loco_y = stats_l(i).Centroid(2);
                r_loco_y = stats_r(j).Centroid(2);
                locodiff_y = abs(r_loco_y - l_loco_y);
                
                if (locodiff_x < max_loco_diff) & (locodiff_y < max_loco_diff)     %check for matching location
                    match(i) = j;       %confirm match
                end
            end
        end
    end
end

for k = 1:num_of_stats_l
    if match(k) ~= 0
        l_loco = abs(sqrt(((stats_l(k).Centroid(1) - middle_x).^2 + (stats_l(k).Centroid(2) - middle_y).^2)));
        if l_loco <= least_distance
            least_distance = l_loco;
            index_l = k;
            index_r = match(k);
        end
    end
end



end