% Simulation details and contact info
...
clear;
clc;

% Setup variables and constants
setup();

% Loop
for i = 1:N
v(1) = (rad*(sum(F_dot)/2))*cos(theta(1));
v(2) = (rad*(sum(F_dot)/2))*sin(theta(2));
omega = r*(F_dot(2)-F_dot(1)/d);
x = x + v*dt;
theta = theta + omega*dt;
a = a + v/dt;


a_out(:,i) = a;
v_out(:,i) = v;
x_out(:,i) = x;
omega_out(:,i) = omega;
theta(:,i) = theta;
end

% Visualization
visualise();
