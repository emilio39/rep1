function res = f(vi,r,Omega,alfa0,v)

b = 6;
c = 4.5308 * r^3 - 4.2464 * r^2 + 0.9989 * r + 0.0019;

phi = atan(v / (Omega * r));
theta = asin( vi / (v^2 + (Omega * r)^2)^0.5 );

cl = 0.64 + 5.7 * alfa0;
cd = 0.3184 * alfa0^2 + 0.0082 * alfa0 + 0.0078;

vR0 = ( v^2 + (Omega * r)^2 - vi^2 )^0.5;

res = 8 * pi * r * vi * cos(phi + theta) * (v + vi * cos(phi + theta)) - b * vR0^2 * c * (cl * cos(phi + theta) - cd * sin(phi + theta));

end