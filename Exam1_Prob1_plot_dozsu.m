%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This script plots the US labor force participation rate against the 
% total dollar value of construction done in the US from Jan-2005 to Jan-2023.
%
% Assignment Information
%   Author:         Deniz OZSU, dozsu@purdue.edu
%   Academic Integrity:
%     [X] I worked alone on this problem and only used resources
%        that meet academic integrity expectations.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% FORMATTED FIGURE DISPLAY

figure;

subplot(2,1,1); 
plot(labor_force, 'b'); 
title('US Labor Force Participation (Jan-2005 to Jan-2023)');
xlabel('Months from Jan-2005');
ylabel('Participation Rate (%)');
grid on;

subplot(2,1,2);  
plot(construction, 'r');  
title('Total Dollar Value of Construction in the US (Jan-2005 to Jan-2023)');
xlabel('Months from Jan-2005');
ylabel('Dollar Value');
grid on;

%% ____________________
%% SAVE THE FIGURE

saveas(gcf, 'Exam1_Prob1_plot_dozsu.png');

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.
