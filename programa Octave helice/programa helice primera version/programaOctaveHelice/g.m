function res = g(vi,r,Omega,v)

b = 6;
c = 4.5308 * r^3 - 4.2464 * r^2 + 0.9989 * r + 0.0019;
beta = 3.82883486188881 * r^4 -14.1042456395364 * r^3 + 14.570190225733 * r^2 -7.35528036473356 * r + 1.95000958573403;

phi = atan(v / (Omega * r));
theta = asin( vi / (v^2 + (Omega * r)^2)^0.5 );
alfa0 = beta - phi - theta;

cl = 0.64 + 5.7 * alfa0;
cd = 0.3184 * alfa0^2 + 0.0082 * alfa0 + 0.0078;

vR0 = ( v^2 + (Omega * r)^2 - vi^2 )^0.5;

res = 8 * pi * r * vi * cos(phi + theta) * (v + vi * cos(phi + theta)) - b * vR0^2 * c * (cl * cos(phi + theta) - cd * sin(phi + theta));

end