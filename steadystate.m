function F = steadystate(x)
% solving for steady state values of A,B,and C without Inhibitors present
I1 = 0; 
I2 = 0; 

Vmax1 = 5; Vmax2 = Vmax1;
Vmax3 = 1; Vmax4 = Vmax3;

Ks = 5; % arbitrary units, all Ks values are the same 
KI1 = 1; KI2 = KI1;

Stot = 100; % arbitrary units

F(1) =  (Vmax1*x(1)/ ((1+I1/KI1)*(Ks + x(1))))  - ((Vmax3*x(2))/(Ks + x(2)));   % v1-v3
F(2) =  (Vmax2*x(1)/ ((1+I2/KI2)*(Ks + x(1))))  - ((Vmax4*x(3))/(Ks + x(3)));   % v2-v4
F(3) = x(1) + x(2) + x(3) - Stot;
end


% x(1) = A 
% x(2) = B
% x(3) = C