function res = p3(v,Omega,R,b,k,h,Preq)

Q = intQ(v,Omega,R,b,k,h);

res = Preq - Omega * Q;

end