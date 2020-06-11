function res = p1(v,Omega,R,b,k,h,Treq)

T = intT(v,Omega,R,b,k,h);

res = Treq - T;

end