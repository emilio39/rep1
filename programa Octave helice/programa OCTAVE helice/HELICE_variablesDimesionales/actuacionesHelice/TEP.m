function [beta,phi,theta,alfa0,t,q] = TEP(vi,v,Omega,r,b,h)

rho = atmISA(h);

c = cuerda(r);
beta = torsion(r);

vR = (v^2 + (Omega*r)^2)^0.5;
vR0 = ( vR^2 + vi^2 )^0.5;

phi = atan( v / (Omega * r) );
theta = atan( vi / vR );
alfa0 = beta - phi - theta;
phi0 = phi + theta;

cl = coef_sust(r,alfa0);
cd = coef_resist(r,alfa0);

t = 0.5 * b * rho * vR0^2 * c * (cl * cos(phi0) - cd * sin(phi0));
q = 0.5 * b * rho * vR0^2 * c * r * (cl * sin(phi0) + cd * cos(phi0));

end