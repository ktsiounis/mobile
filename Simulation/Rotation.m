%rotation matrix for mobile robot.Rotated on Z axis

function R = rotation(theta)
	R = [cos(theta)	... 0;
		 sin(theta) ... 0;
		];
end
