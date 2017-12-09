function [  ] = pickup( P_ro, O, A, T )
%PICKUP Summary of this function goes here
%   Detailed explanation goes here

retval = system('Puma_SPEED 50');
pause(.5);

[pickup_1_command_string, err] = sprintf('./Puma_API/movpos.bin %0.3f %0.3f %0.3f %0.3f %0.3f %0.3f', P_ro(1), P_ro(2), P_ro(3)+200, O, A, T);
if( not(isempty(err)) ) 
    disp('sprintf error');
    return;
end
retval = system(pickup_1_command_string);
pause(3);

retval = system('Puma_SPEED 10');
pause(.5);

retval = system('openGripper&');
[pickup_2_command_string, err] = sprintf('./Puma_API/movpos.bin %0.3f %0.3f %0.3f %0.3f %0.3f %0.3f', P_ro(1), P_ro(2), P_ro(3)+127, O, A, T);
if( not(isempty(err)) ) 
    disp('sprintf error');
    return;
end

retval = system(pickup_2_command_string);
pause (3);

retval = system('closeGripper');
pause(.5);

[pickup_1_command_string, err] = sprintf('./Puma_API/movpos.bin %0.3f %0.3f %0.3f %0.3f %0.3f %0.3f', P_ro(1), P_ro(2), P_ro(3)+200, O, A, T);
if( not(isempty(err)) ) 
    disp('sprintf error');
    return;
end
retval = system(pickup_1_command_string);

throw_object();

end

