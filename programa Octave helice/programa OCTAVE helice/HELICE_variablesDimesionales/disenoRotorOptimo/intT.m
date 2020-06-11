function T = intT(vi,alfa0,v,Omega,R,b,k,h)

r = linspace(k*R,R,18);

for i = 1:length(r)
      
    [beta1,phi1,theta1,t1,q1,c1] = TEP(vi,alfa0,v,Omega,r(i),b,h);

    t(i) = t1;

end

T = trapz(r,t);

end