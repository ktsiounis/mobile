% Setup file contains information about the variables necessary for the siulation,, constants, evviromental variables and more. It initializes any vector is necesary for the simulation.

%Mobile robot variables and constants
m = 1;				% Mass of the mobile robot (kg)
g = 9.17			% Gravity constant

% Simulation variables and contstants
starttime = 0;			% Times starts at 0 seconds
endtime = 20;			% Time will end at 20 seconds
dt = 0.001;			% Time derivative

% *_out vectors initialized for saving all the simulation
% data for the visualization.
x_out = zeros(2, N);		% Position vector
v_out = zeros(2, N);		% Vecolity vector
a_out = zeros(2, N);		% Acceleration vector
