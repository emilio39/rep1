function T_ad = intT(vi_ad,alfa0,v_ad,b,k)

x = linspace(k,1,18);

for i = 1:length(x)
      
    [beta1,phi1,theta1,t1,q1,c1] = TEP(vi_ad,alfa0,v_ad,x(i),b);

    t_ad(i) = t1;

end

T_ad = trapz(x,t_ad);

end