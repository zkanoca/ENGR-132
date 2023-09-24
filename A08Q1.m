%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Script for MATLAB Skills - FOR Loop
%
% Assignment Information
%   Assignment:     A08, Problem 1
%   Author:         Name, login@purdue.edu
%   Team ID:        ###-##
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% INSTRUCTION TEXT

% Q1. Instruction Text
% A08_skills(XXXXXXXXXX,1) ran at 24-Sep-2021 07:00:28 UTC
% 
% Flowchart Instructions
%   M: Initialize variable M to 12
%   N: Initialize variable N to 5
%   A: Initialize variable S to 9
%   D: Define the control vector as Z = [30, 24, 28, 3, 7, 13, 28, 13, 14, 6, 12, 3]
%   E: Is the number of completed iterations less than the number of elements in Z?
%   T: Assign T to be M multiplied by the quantity of N minus the current element in Z
%   V: Assign V to be M multiplied by the quantity of N plus the current element in Z
%   B: Reassign S to be S plus T minus V
%   P: Display the final value for S to the Command Window.
% 
% Translate the flowchart into a script using the instructions above.

%% ____________________
%% FOR LOOP
% Initialization
M = 12;
N = 5;
A = 9;
S = A;
Z = [30, 24, 28, 3, 7, 13, 28, 13, 14, 6, 12, 3];

for currentElement = Z
    T = M * (N - currentElement);
    V = M * (N + currentElement);
    S = S + T - V;
end

% Display the final value of S
disp(S);

% Display number of completed iterations
disp(length(Z))

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.
