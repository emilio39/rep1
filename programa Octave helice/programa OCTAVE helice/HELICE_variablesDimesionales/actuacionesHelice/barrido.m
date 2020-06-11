v = 30:5:90;
Omega = 500;
R = 0.38;
b = 6;
k = 0.15;
h = 2000;

for i = 1:length(v)
    [T1,Q1,P1,Pu1,ef1,rp1] = int(v(i),Omega,R,b,k,h);
    T(i) = T1;
    Q(i) = Q1;
    P(i) = P1;
    Pu(i) = Pu1;
    ef(i) = ef1;
    rp(i) = rp1;
end

figure
plot(v,T,"marker","+")
grid on
grid minor
title("T vs v")
xlabel("v(m/s)")
ylabel("T(N)")

figure
plot(v,Q,"marker","+")
grid on
grid minor
title("Q vs v")
xlabel("v(m/s)")
ylabel("Q(N.m)")

figure
plot(v,P,"marker","+")
grid on
grid minor
title("P vs v")
xlabel("v(m/s)")
ylabel("P(W)")

figure
plot(v,Pu,"marker","+")
grid on
grid minor
title("Pu vs v")
xlabel("v(m/s)")
ylabel("Pu(W)")

figure
plot(v,ef,"marker","+")
grid on
grid minor
title("ef vs v")
xlabel("v(m/s)")
ylabel("ef")

figure
plot(v,rp,"marker","+")
grid on
grid minor
title("rp vs v")
xlabel("v(m/s)")
ylabel("rp")

