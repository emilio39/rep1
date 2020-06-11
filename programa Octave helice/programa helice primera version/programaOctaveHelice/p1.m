function res = p1(Omega,v,h,Treq)

T = intT(Omega,v,h);

res = Treq - T;

end