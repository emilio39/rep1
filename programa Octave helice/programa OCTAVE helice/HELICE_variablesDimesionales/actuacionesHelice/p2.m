function res = p2(v,Omega,R,b,k,h,Qreq)

Q = intQ(v,Omega,R,b,k,h);

res = Qreq - Q;

end