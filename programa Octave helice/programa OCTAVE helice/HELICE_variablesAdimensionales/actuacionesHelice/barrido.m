v_ad = 0:0.025:0.5;
k = 0.15;
b = 6;

for i = 1:length(v_ad)
    
    [T1_ad,Q1_ad,Pu1_ad,ef1,rp1] = int(v_ad(i),b,k);
    
    T_ad(i) = T1_ad;
    Q_ad(i) = Q1_ad; 
    Pu_ad(i) = Pu1_ad;
    ef(i) = ef1;
    rp(i) = rp1;
    
end

figure
plot(v_ad,T_ad,"marker","+")
grid on
grid minor
title("T(ad) vs v(ad)")
xlabel("v(ad)")
ylabel("T(ad)")
figure
plot(v_ad,Q_ad,"marker","+")
grid on
grid minor
title("Q(ad) vs v(ad)")
xlabel("v(ad)")
ylabel("Q(ad)")

figure
plot(v_ad,Pu_ad,"marker","+")
grid on
grid minor
title("Pu(ad) vs v(ad)")
xlabel("v(ad)")
ylabel("Pu(ad)")

figure
plot(v_ad,ef,"marker","+")
grid on
grid minor
title("ef vs v(ad)")
xlabel("v(ad)")
ylabel("ef")

figure
plot(v_ad,rp,"marker","+")
grid on
grid minor
title("rp vs v(ad)")
xlabel("v(ad)")
ylabel("rp")