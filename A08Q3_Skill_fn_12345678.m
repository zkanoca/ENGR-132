function [x, w, y] = A08Q3_Skill_fn_12345678(g, h, f)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%   Function template for MATLAB Skills - UDFs
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Q3. Instruction Text
% 
% Part A: Write a function that meets the following expectations:
%   Function name:
%     A08Q3_Skill_fn_12345678
%   Inputs:
%     g
%     h
%     f
%   Outputs:
%     x
%     w
%     y
%   Operations to be coded within the function:
%     x = (f - h) - 15;
%     w = g - 17;
%     y = 20 / x;
%     p = x * w - y;
%     Display p to the Command Window with 2 decimal places
% Use the m-file template provided in the assignment files.
% 
% Part B
% Clear all variables out of your workspace. Then, enter the 
% following command into Command Window.
%   >> [out1,out2,out3] = A08Q3_Skill_fn_12345678(79,55,15)
% Are any of the inputs defined in the Workspace? Why or why not?
% 
% Part C
% Clear all variables out of your workspace. Then, enter the 
% following commands into Command Window.
%   >> in1 = 77;
%   >> in2 = 68;
%   >> in3 = 32;
%   >> [out1,out3] = A08Q3_Skill_fn_12345678(in1,in2,in3)
% C.1: Is the second output argument value available in the workspace? Why or why not?
% C.2: Is the variable 'p' visible in the Workspace? Why or why not?
% 
% Part D
% Rewrite the function definition line so that no output arguments are shared to the Workspace.


%% ____________________
%% INITIALIZATION

%% ____________________
%% CALCULATIONS

x = (f - h) - 15;
w = g - 17;
y = 20 / x;

p = x * w - y;

%% ____________________
%% FORMATTED TEXT DISPLAYS

fprintf('Value of p: %.2f\n', p);

end
