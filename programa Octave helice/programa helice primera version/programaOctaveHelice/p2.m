function res = p2(Omega,v,h,Qreq)

Q = intQ(Omega,v,h);

res = Qreq - Q;

end