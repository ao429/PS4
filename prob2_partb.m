 global I1
 global I2
 I1 = 0;
 I2 = 10;
 a = [];
for i = 1:11
    SS = @steadystate_b;
    x0 = [100,0,0]; % inital conditions
    x = fsolve(SS,x0);
    a(i) = x(1);
    I1 = I1 + 1;
    I2 = I2 - 1;
end  

i1 = 0:10;
i2 = 10: -1:0;
% i2 = 0:10;
plot3(i1,i2,a)
xlabel("I1")
ylabel("I2")
zlabel("[A]")
title("part B 3D plot")