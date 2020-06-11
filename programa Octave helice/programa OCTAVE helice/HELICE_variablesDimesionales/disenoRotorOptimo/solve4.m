v = 0;
Treq = 10;
R = 0.1:0.005:0.5;
b = 6;
k = 0.15;
h = 0;

alfa0Grad = 10.5;
alfa0 = alfa0Grad * pi/180;
Omega = 700;

for i = 1:length(R)
    vi(i) = fsolve(@(x)p1(x,alfa0,v,Omega,R(i),b,k,h,Treq),12);
    [T1,Q1,P1,Pu1,ef1,rp1] = int(vi(i),alfa0,v,Omega,R(i),b,k,h);
    
    T(i) = T1;
    Q(i) = Q1;
    P(i) = P1;
    Pu(i) = Pu1;
    ef(i) = ef1;
    rp(i) = rp1;
    
end

figure
plot(R,vi,"marker","+")
grid on
grid minor
title("vi vs R")
xlabel("R(m)")
ylabel("vi(m/s)")

figure
plot(R,T,"marker","+")
grid on
grid minor
title("T vs R")
xlabel("R(m)")
ylabel("T(N)")

figure
plot(R,Q,"marker","+")
grid on
grid minor
title("Q vs R")
xlabel("R(m)")
ylabel("Q(N.m)")

figure
plot(R,P/1000,"marker","+")
grid on
grid minor
title("P vs R")
xlabel("R(m)")
ylabel("P(kW)")

figure
plot(R,Pu/1000,"marker","+")
grid on
grid minor
title("Pu vs R")
xlabel("R(m)")
ylabel("Pu(kW)")

figure
plot(R,ef,"marker","+")
grid on
grid minor
title("ef vs R")
xlabel("R(m)")
ylabel("ef(W/N)")

plot(R,rp,"marker","+")
hold on
grid on
grid minor
title("rp vs R")
xlabel("R(m)")
ylabel("rp")

