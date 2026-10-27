PL = 420; %Pitch Length of the timing belt
N1 = 20; %Number of teeth on Pulley 1 (Driver)
N2 = 60; %Number of teeth on Pulley 2 (Driven)
p = 3; %Pitch

% Driving pulley 1
d1 = (p*N1)/3.14;
do1 = d1 - (2*0.381);
fprintf('Pulley 1 Pitch diameter = %.2f\n', d1);
fprintf('Pulley 1 Outer diameter = %.2f\n\n', do1);

% Timing belt
Nb = PL/p;
fprintf('Number of teeth = %.2f\n\n', Nb);

% Driving pulley 2
d2 = (p*N2)/3.14;
do2 = d2 - (2*0.381);
fprintf('Pulley 2 Pitch diameter = %.2f\n', d2);
fprintf('Pulley 2 Outer diameter = %.2f\n\n', do2);

% Center distance
b = (2*PL) - 3.14*(d1+d2);
CD = (b + sqrt(b^2 - 8*((d2-d1)^2)))/8;
fprintf('b = %.2f\n', b);
fprintf('CD = %.2f\n\n', CD);

% Gear ratio
i = N2/N1;
fprintf('i = %.2f\n', i);