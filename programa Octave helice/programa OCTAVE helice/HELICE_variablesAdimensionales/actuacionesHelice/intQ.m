function Q_ad = intQ(v_ad,b,k)

x = linspace(k,1,18);

for i = 1:length(x)
    
    vi1 = viDis2(v_ad,x(i),b);
    vi_ad(i) = vi1;
    
    [beta1,phi1,theta1,alfa01,t1,q1] = TEP(vi_ad(i),v_ad,x(i),b);

    q_ad(i) = q1;
    
end

Q_ad = trapz(x,q_ad);

end