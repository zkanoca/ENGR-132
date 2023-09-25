function [maxTankVol, fluidVol, drainageTime] = A08Q4_tankVol_dozsu(tankDimensions, tankOrientation, drainDiameter, fluidHeight)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description: This function calculates the drainage time, 
% maximum volume, and fluid volume for a cylindrical tank based on 
% its dimensions, fluid height, orientation, and drain size.
%
% Function Call: 
% [maxTankVol, fluidVol, drainageTime] = tank_drainage_time(tankDimensions, tankOrientation, drainDiameter, fluidHeight)
%
% Input Arguments:
% tankDimentsions: 2-element vector for tank dimensions [length, diameter] (meters)
% tankOrientation: Scalar for tank orientation (0 for horizontal, 90 for vertical)
% drainDiameter: Scalar for the diameter of the drain opening (meters)
% fluidHeight: Scalar for fluid height inside the tank (meters)
%
% Output Arguments:
% maxTankVol: Scalar for the maximum volume of the tank (m^3)
% fluidVol: Scalar for the fluid volume inside the tank (m^3)
% drainageTime: Scalar for the drain time (seconds)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
%% Define constants
g = 9.806; % m/s^2
Cd = 0.8; % discharge coefficient

%% ____________________
%% CALCULATIONS & FORMATTED TEXT DISPLAY

drainArea = pi * (drainDiameter / 2)^2;
maxTankVol = pi * tankDimensions(1) * (tankDimensions(2) / 2)^2;

%% Check if the tank orientation is inappropriate
if tankOrientation ~= 0 && tankOrientation ~= 90
    disp('Invalid tank orientation');
    drainageTime = -99;
    fluidVol = -99;
    return;
end

if tankOrientation == 0 % horizontal tank
    fluidVol = tankDimensions(1) * tankDimensions(2) * fluidHeight;
    drainageTime = (2 * fluidHeight / (g * Cd^2 * drainArea))^(1/2);
elseif tankOrientation == 90 % vertical tank
    fluidVol = pi * tankDimensions(1)^2 * fluidHeight;
    drainageTime = (2 * fluidHeight / (g * Cd^2 * drainArea))^(1/2) * (1 - (fluidHeight / tankDimensions(2)));
end
    
    fprintf('Max Tank Volume: %f m^3\n', maxTankVol);
    fprintf('Fluid Volume: %f m^3\n', fluidVol);
    fprintf('Drainage Time: %f seconds\n', drainageTime);
end
