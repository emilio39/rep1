function res = p1(vi,alfa0,v,Omega,R,b,k,h,Treq)

T = intT(vi,alfa0,v,Omega,R,b,k,h);

res = Treq - T;

end