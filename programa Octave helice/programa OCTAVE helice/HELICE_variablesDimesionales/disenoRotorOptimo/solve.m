v = 0;
h = 0;
% Treq = 306;
vi = 20;
R = 0.1;
b = 6;
k = 0.15;

alfa0Grad = 10.5;
Omega = 700;

alfa0 = alfa0Grad * pi/180;

% vi = fsolve(@(x)p1(x,alfa0,v,Omega, R,b,k,h,Treq),15);
[T,Q,P,Pu,ef,rp] = int(vi,alfa0,v,Omega,R,b,k,h);

% [G_TCM,T_TCM,P_TCM,Pu_TCM,ef_TCM,rp_TCM,vi_TCM] = TCM(v,h,R,k,Treq);


