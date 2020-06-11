v = 70;
Treq = 625;
R = 0.38;
b = 6;
k = 0.15;
h = 2000;

alfa0Grad = 1:0.5:20;
alfa0 = alfa0Grad * pi/180;
Omega = 1000;

for i = 1:length(alfa0)
    vi(i) = fsolve(@(x)p1(x,alfa0(i),v,Omega,R,b,k,h,Treq),0);
    [T1,Q1,P1,Pu1,ef1,rp1] = int(vi(i),alfa0(i),v,Omega,R,b,k,h);
    
    T(i) = T1;
    Q(i) = Q1;
    P(i) = P1;
    Pu(i) = Pu1;
    ef(i) = ef1;
    rp(i) = rp1;
    
end

% figure
% plot(alfa0Grad,vi,"marker","+")
% grid on
% grid minor
% title("vi vs alfa0")
% xlabel("alfa0(º)")
% ylabel("vi(m/s)")
% 
% figure
% plot(alfa0Grad,T,"marker","+")
% grid on
% grid minor
% title("T vs alfa0")
% xlabel("alfa0(º)")
% ylabel("T(N)")
% 
% figure
% plot(alfa0Grad,Q,"marker","+")
% grid on
% grid minor
% title("Q vs alfa0")
% xlabel("alfa0(º)")
% ylabel("Q(N.m)")
% 
% figure
% plot(alfa0Grad,P/1000,"marker","+")
% grid on
% grid minor
% title("P vs alfa0")
% xlabel("alfa0(º)")
% ylabel("P(kW)")
% 
% figure
% plot(alfa0Grad,Pu/1000,"marker","+")
% grid on
% grid minor
% title("Pu vs alfa0")
% xlabel("alfa0(º)")
% ylabel("Pu(kW)")
% 
% figure
% plot(alfa0Grad,ef,"marker","+")
% grid on
% grid minor
% title("ef vs alfa0")
% xlabel("alfa0(º)")
% ylabel("ef(W/N)")


plot(alfa0Grad,rp,"marker","+")
hold on
grid on
grid minor
title("rp vs alfa0")
xlabel("alfa0(º)")
ylabel("rp")

