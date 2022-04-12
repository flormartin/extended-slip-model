function [value,isterminal,direction] = guard_stance_leg2(t,x)
%x = [x y phi theta dx dy dphi dtheta]
%Leg 2 is the leg with theta-angle

global offset l0 l1;
l = sqrt((offset-(x(1)+l1*sin(x(5))))^2+(x(2)-l1*cos(x(5)))^2);


value = l-l0;
isterminal = 1;     %stop the integration
direction = 1;      %from below

end
