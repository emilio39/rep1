function Q = intQ(v,Omega,R,b,k,h)

r = linspace(k*R,R,20);

for i = 1:length(r)
    
    vi1 = viDis2(v,Omega,r(i),b);
    vi(i) = vi1;
    
    [beta1,phi1,theta1,alfa01,t1,q1] = TEP(vi(i),v,Omega,r(i),b,h);

    q(i) = q1;
    
end

Q = trapz(r,q);

end