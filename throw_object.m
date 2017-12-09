function [  ] = throw_object(  )
%THROW_OBJECT Summary of this function goes here
%   Detailed explanation goes here
% ACTIVATE THROW READY POSITION

throw_1_angles = [ 24 -60 180 0 55 180 ]; 
throw_2_angles = [ 24 -60 230 0 55 180 ]; 
throw_3_angles = [ 24 -60 135 0 -20   180 ]; 


% moved for practice
% throw_1_angles = [ -25 -60 180 0 55 180 ]; 
% throw_2_angles = [ -25 -60 236 0 55 180 ]; 
% throw_3_angles = [ -25 -60 140 0 -20   180 ]; 

retval = system('Puma_SPEED 100');
pause (.5)

[throw_1_command_string, err] = sprintf('./Puma_API/movjoints.bin %0.3f %0.3f %0.3f %0.3f %0.3f %0.3f', throw_1_angles(1), throw_1_angles(2), throw_1_angles(3), throw_1_angles(4), throw_1_angles(5), throw_1_angles(6));
if( not(isempty(err)) ) 
    disp('sprintf error');
    return;
end

[throw_2_command_string, err] = sprintf('./Puma_API/movjoints.bin %0.3f %0.3f %0.3f %0.3f %0.3f %0.3f', throw_2_angles(1), throw_2_angles(2), throw_2_angles(3), throw_2_angles(4), throw_2_angles(5), throw_2_angles(6));
if( not(isempty(err)) ) 
    disp('sprintf error');
    return;
end

[throw_3_command_string, err] = sprintf('./Puma_API/movjoints.bin %0.3f %0.3f %0.3f %0.3f %0.3f %0.3f', throw_3_angles(1), throw_3_angles(2), throw_3_angles(3), throw_3_angles(4), throw_3_angles(5), throw_3_angles(6));
if( not(isempty(err)) ) 
    disp('sprintf error');
    return;
end



disp('Ready...')
retval = system(throw_1_command_string);
pause(1)
disp('Aim...')
retval = system(throw_2_command_string);
pause(1)
retval = system('Puma_SPEED 500');
pause (.5)

disp('FIRE!!!')
retval = system(throw_3_command_string);
pause (.48)


retval = system('openGripper&');
pause (1)
retval = system('closeGripper');
retval = system('Puma_SPEED 100');

%if(retval ~= 0) 
%    disp('Error movjoints()');
%    return;
%end

end

