% Setup file contains information about the variables necessary for the siulation,, constants, evviromental variables and more. It initializes any vector is necesary for the simulation.

%Mobile robot variables and constants
m = 1;				% Mass of the mobile robot (kg)
g = 9.17;			% Gravity constant
rad = 0.5;          % size of the wheel
d = 2;              % distance between the wheels
F_dot = [5; 5];		%force of the motors needed for velocity.Will be calculated later


% Simulation variables and contstants
%starttime = 0;			% Times starts at 0 seconds
startTime = 0;			% Time starts at 0 seconds
endTime = 20;			% Time ends at 20 seconds
dt = 0.01;
times = startTime:dt:endTime;	% Total timestamps vector
N = length(times);


% *_out vectors initialized for saving all the simulation
% data for the visualization.
x_out = zeros(2, N);		% Position vector
v_out = zeros(2, N);		% Vecolity vector
a_out = zeros(2, N);		% Acceleration vector
omega_out = zeros(1,N);      % Angular velocity of the drone,theta_dot=omega
theta_out = zeros(1,N);      % Starting direction

%vector for calculating
v = [0; 0];					
a = [0; 0];
x = [0; 0];
omega = 0;
theta = 0;
