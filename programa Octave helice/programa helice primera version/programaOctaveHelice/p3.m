function res = p3(Omega,v,h,Preq)

Q = intQ(Omega,v,h);

res = Preq - Omega * Q;

end