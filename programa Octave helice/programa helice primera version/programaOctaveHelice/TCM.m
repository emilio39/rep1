function [G,T,P,Pu,rp,vi] = TCM(v,h,R,Preq)

v0 = v;
rho = atmISA(h);

S = pi * R^2;

res = @(u) 2 * rho * S * u * (v0 + u)^2 - Preq;
vi = fsolve(res, 10);

vd = v0 + vi;
vs = v0 + 2 * vi;

G = rho * S * vd;
T = G * (vs - v0);
P = 0.5 * G * (vs^2 - v0^2);
rp = 2 * v0 / (v0 + vs);
Pu = P * rp;

end