%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Two Wheel Mobile Robot Simulation
% Project was developed for IEEE University of Ioannina Student Branch
% Koukouzas Giorgos and Tzivaras Vasilis
% Contact us at ieeesbuoi@gmail.com
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Clear previous simulation workspace data
clear all;
clc;

% Setup variables and constants
setup();

% Loop
for i = 1:N
    % The desired force is calculated by the error between the desired and
    % the current position of the mobile robot.
    F_des = kf*(x_des' - x);
    
    % Calculate the velocity
    v(1) = (rad * (sum(F_des) / 2)) * cos(theta);   % Valocity at X axis
    v(2) = (rad * (sum(F_des) / 2)) * sin(theta);   % Velocity at Y axis
    
    % Calculate the position
    x = x + v*dt;
    
    % Calculate the acceleration
    a = a + v/dt;

    % Calculate the omega
    omega = rad * ((F_dot(2) - F_dot(1)) / d);
    
    % Calculate the theta angle at Z axis
    theta = theta + omega*dt;
    
    % Store any variables or vectors for the visualization part
    a_out(:, i) = a;
    v_out(:, i) = v;
    x_out(:, i) = x;
    omega_out(:, i) = omega;
    theta_out(:, i) = theta;
end

% Visualize here
figure();
xlabel('x (pixels)')
ylabel('y (pixels)')
title('Mobile Robot');
grid on;

for i = 1:N
    hold on
    plot(x_out(:, i));
    hold off
end
