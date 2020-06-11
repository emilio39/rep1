function [vi,beta] = viDis(r,Omega,alfa0,v)

vi = fsolve(@(x)f(x,r,Omega,alfa0,v), 10);

theta = asin( vi / (v^2 + (Omega * r)^2)^0.5 );
phi = atan( v / (Omega * r) );
beta = phi + theta + alfa0;

end