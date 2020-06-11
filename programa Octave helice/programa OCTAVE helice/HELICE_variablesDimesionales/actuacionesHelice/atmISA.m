function rho = atmISA(h)

T0 = 288;
rho0 = 1.225;

R = 287;
g = 9.81;
K = 0.0065;

rho = rho0 * (1 - (K/T0) * h) .^( (g/(R*K) - 1 ) );

end