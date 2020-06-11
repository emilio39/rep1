function [vi,res] = viDis2(v,Omega,r,b)

vi = fsolve(@(x)g(x,v,Omega,r,b), 10);
res = g(vi,v,Omega,r,b);

end