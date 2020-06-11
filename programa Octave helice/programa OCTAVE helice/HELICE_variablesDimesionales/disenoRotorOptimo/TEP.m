function [beta,phi,theta,t,q,c] = TEP(vi,alfa0,v,Omega,r,b,h)

rho = atmISA(h);

vR = (v^2 + (Omega*r)^2)^0.5;
vR0 = ( vR^2 + vi^2 )^0.5;

phi = atan( v / (Omega * r) );
theta = atan( vi / vR );
phi0 = phi + theta;

cl = coef_sust(r,alfa0);
cd = coef_resist(r,alfa0);

c = (8 * pi * r * vi * cos(phi) * (v + vi * cos(phi)) ) / (b * vR0^2 * (cl * cos(phi0) - cd * sin(phi0)));
beta = phi + theta + alfa0;

t = 0.5 * b * rho * vR0^2 * c * (cl * cos(phi0) - cd * sin(phi0));
q = 0.5 * b * rho * vR0^2 * c * r * (cl * sin(phi0) + cd * cos(phi0));

end