v = 70;
Treq = 625;
R = 0.38;
b = 6;
k = 0.15;
h = 2000;

alfa0Grad = 5;
alfa0 = alfa0Grad * pi/180;
Omega = 300:10:1500;

for i = 1:length(Omega)
    vi(i) = fsolve(@(x)p1(x,alfa0,v,Omega(i),R,b,k,h,Treq),12);
    [T1,Q1,P1,Pu1,ef1,rp1] = int(vi(i),alfa0,v,Omega(i),R,b,k,h);
    
    T(i) = T1;
    Q(i) = Q1;
    P(i) = P1;
    Pu(i) = Pu1;
    ef(i) = ef1;
    rp(i) = rp1;
    
end

% figure
% plot(Omega,vi,"marker","+")
% grid on
% grid minor
% title("vi vs Omega")
% xlabel("Omega(rad/s)")
% ylabel("vi(m/s)")
% 
% figure
% plot(Omega,T,"marker","+")
% grid on
% grid minor
% title("T vs Omega")
% xlabel("Omega(rad/s)")
% ylabel("T(N)")
% 
% figure
% plot(Omega,Q,"marker","+")
% grid on
% grid minor
% title("Q vs Omega")
% xlabel("Omega(rad/s)")
% ylabel("Q(N.m)")
% 
% figure
% plot(Omega,P/1000,"marker","+")
% grid on
% grid minor
% title("P vs Omega")
% xlabel("Omega(rad/s)")
% ylabel("P(kW)")
% 
% figure
% plot(Omega,Pu/1000,"marker","+")
% grid on
% grid minor
% title("Pu vs Omega")
% xlabel("Omega(rad/s)")
% ylabel("Pu(kW)")
% 
% figure
% plot(Omega,ef,"marker","+")
% grid on
% grid minor
% title("ef vs Omega")
% xlabel("Omega(rad/s)")
% ylabel("ef(W/N)")


plot(Omega,rp,"marker","+")
hold on
grid on
grid minor
title("rp vs Omega")
xlabel("Omega(rad/s)")
ylabel("rp")

