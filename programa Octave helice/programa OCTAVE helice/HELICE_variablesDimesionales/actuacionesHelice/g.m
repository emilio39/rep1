function res = g(vi,v,Omega,r,b)

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

res = 8 * pi * r * vi * cos(phi) * (v + vi * cos(phi)) - b * vR0^2 * c * (cl * cos(phi0) - cd * sin(phi0));

end