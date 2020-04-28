% % solving for stead state values of A,B,and C without Inhibitors present
% I1 = 0; % absence of inhibitors
% I2 = I1; 
% Vmax1 = 5; % arbitrary units
% Vmax2 = Vmax1;
% Vmax3 = 1; % arbitrary units
% Vmax4 = Vmax3;
% Ks = 5; % arbitrary units, all Ks values are the same 
% KI1 = 1; % arbitrary units
% KI2 = KI1;
% Stot = 100; % arbitrary units


SS = @steadystate;
x0 = [100,25,35];
x = fsolve(SS,x0);

A = x(1)
B = x(2)
C = x(3)