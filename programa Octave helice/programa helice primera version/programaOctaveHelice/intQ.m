function Q = intQ(Omega,v,h)

k = 0.15;
R = 0.38;

r = linspace(k*R,R,20);


for i = 1:length(r)
    
    vi1 = viDis2(r(i), Omega, v);
    vi(i) = vi1;
    
    [beta1,phi1,theta1,alfa01,t1,q1] = TEP(r(i),vi(i),Omega,v,h);

    q(i) = q1;
    
end

Q = trapz(r,q);

end