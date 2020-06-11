function [vi,res] = viDis2(r,Omega,v)

vi = fsolve(@(x)g(x,r,Omega,v), 5);
res = g(vi,r,Omega,v);

end