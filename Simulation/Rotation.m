function R = rotation(theta)
	% Define an R rotation matrix in Z axis
    R = [cos(theta), -sin(theta), 0;
        sin(theta), cos(theta), 0;
        0, 0, 1]; 
end
