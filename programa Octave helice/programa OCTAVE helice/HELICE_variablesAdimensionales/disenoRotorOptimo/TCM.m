function [G,T,P,Pu,ef,rp,vi] = TCM(v,h,R,k,Treq)

v0 = v;
rho = atmISA(h);

S = pi * (R^2 - (k*R)^2);

res = @(u) 2 * rho * S * u * (v0 + u) - Treq;
vi = fsolve(res, 10);

vd = v0 + vi;
vs = v0 + 2 * vi;

G = rho * S * vd;
T = G * (vs - v0);
P = 0.5 * G * (vs^2 - v0^2);
Pu = T * v;
ef = P / T;
rp = Pu / P;

end