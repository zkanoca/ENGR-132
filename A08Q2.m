%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This program calculates the work done by a pusher in moving a bag of 
% aggragete based on force-displacement data. It displays the force
% and work as a function of displacement in graphical.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
% read data from csv skipping the header row
data = csvread('data_pusher_force_displacement.csv', 1, 0); 
time = data(:, 1);
displacement = data(:, 2);
force = data(:, 3);

%% ____________________
%% CALCULATIONS
N = length(displacement);
work_vector = zeros(1, N);
for k = 2:N
    work_vector(k) = work_vector(k-1) + (force(k) + force(k-1)) / 2 * (displacement(k) - displacement(k-1));
end
total_work = work_vector(end);

%% ____________________
%% FORMATTED FIGURE DISPLAY
figure;

% Force-Displacement Plot
subplot(2, 1, 1);
plot(displacement, force, '-');
xlabel('Displacement (m)');
ylabel('Force (N)');
title('Force vs. Displacement');
grid on;

% Work-Displacement Plot
subplot(2, 1, 2);
plot(displacement, work_vector, '-');
xlabel('Displacement (m)');
ylabel('Work (J)');
title(['Work vs. Displacement, Total Work: ', num2str(total_work), ' Joules']);
grid on;

% Saving figure
saveas(gcf, 'A08Q2_figure_zkanoca.png');
