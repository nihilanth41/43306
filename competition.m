% Initialization
% Add subdirectories to path
addpath(genpath(pwd));
valid = 0;
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
m=0;
%% Main Control Loop 
while(1)

    while(valid ~= 1)
        m=m+1;
        % ACTIVATE DEFEND POSITION
         disp('Activating defend position...')
         retval = system(defend_2_command_string); %lower
         if(retval ~= 0) 
             disp('Error movjoints()');
             return;
         end
         pause(3);
         disp('Activating defend position...')
         retval = system(defend_1_command_string); %upper 
         if(retval ~= 0) 
             disp('Error movjoints()');
             return;
         end
        %[P_ro, O, A, T, valid] = object_check();
        if mod(m,5) == 4
            valid = 1;
        end
    end
    valid = 0;
    P_ro(1)= -250;
    P_ro(1)= 315;
    P_ro(1)= -312;
    O = 0;
    A = 90;
    T = 0;
    pickup(P_ro, O, A, T); % pickup and throw object
end






