v_ad = 0.5;
T_adreq = 0.1;
b = 8;
k = 0.15;

alfa0Grad = 2:1:15;
alfa0 = alfa0Grad * pi/180;

for i = 1:length(alfa0)
    vi_ad(i) = fsolve(@(x)p1(x,alfa0(i),v_ad,b,k,T_adreq),0.05);
    [T1,Q1,Pu1,ef1,rp1] = int(vi_ad(i),alfa0(i),v_ad,b,k);
    
    T_ad(i) = T1;
    Q_ad(i) = Q1;
    Pu_ad(i) = Pu1;
    ef_ad(i) = ef1;
    rp(i) = rp1;
    
end

figure
plot(alfa0Grad,vi_ad,"marker","+")
grid on
grid minor
title("vi(ad) vs alfa0")
xlabel("alfa0(º)")
ylabel("vi(ad)")

figure
plot(alfa0Grad,T_ad,"marker","+")
grid on
grid minor
title("T_ad vs alfa0")
xlabel("alfa0(º)")
ylabel("T(ad)")

figure
plot(alfa0Grad,Q_ad,"marker","+")
grid on
grid minor
title("Q vs alfa0")
xlabel("alfa0(º)")
ylabel("Q(ad)")

figure
plot(alfa0Grad,Pu_ad,"marker","+")
grid on
grid minor
title("Pu(ad) vs alfa0")
xlabel("alfa0(º)")
ylabel("Pu(ad)")

figure
plot(alfa0Grad,ef_ad,"marker","+")
grid on
grid minor
title("ef(ad) vs alfa0")
xlabel("alfa0(º)")
ylabel("ef(ad)")


plot(alfa0Grad,rp,"marker","+")
hold on
grid on
grid minor
title("rp vs alfa0")
xlabel("alfa0(º)")
ylabel("rp")

