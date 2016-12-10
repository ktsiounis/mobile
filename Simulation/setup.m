% Setup file contains information about the variables necessary for the siulation,, constants, evviromental variables and more. It initializes any vector is necesary for the simulation.

%Mobile robot variables and constants
m = 1;				% Mass of the mobile robot (kg)
g = 9.17			% Gravity constant
rad = 0.5;          % size of the wheel
d = 2;              % distance between the wheels
phi_dot_1 = 5;      %force of the motors needed for velocity.Will be calculated later
phi_dot_2 = 5;      %force of the motors needed for velocity.Will be calculated later


% Simulation variables and contstants
%starttime = 0;			% Times starts at 0 seconds
MAX_ITER = 50;			% Time will end at 20 seconds,max iterations          
DT = 0.05;              % Time derivative
		

% *_out vectors initialized for saving all the simulation
% data for the visualization.
x_out = zeros(2, 1);		% Position vector
v_out = zeros(2, 1);		% Vecolity vector
a_out = zeros(2, 1);		% Acceleration vector
omega = zeros(2,1);         % Angular velocity of the drone,theta_dot=omega
theta = zeros(2,1);         % Starting direction

