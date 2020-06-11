h = 2000;
v = 70;
Treq = 625;
R = 0.38;
b = 6;
k = 0.15;
% Omega = 500;

Omega = fsolve(@(x)p1(v,x,R,b,k,h,Treq), 400);
[T,Q,P,Pu,ef,rp] = int(v,Omega,R,b,k,h);
    




