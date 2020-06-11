v = 30:5:90;
h = 2000;
Omega = 500;

for i = 1:length(v)
    [T1,Q1,P1,rp1] = int(Omega,v(i),h);
    T(i) = T1;
    Q(i) = Q1;
    P(i) = P1;
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
plot(v,rp,"marker","+")
grid on
grid minor
title("rp vs v")
xlabel("v(m/s)")
ylabel("rp")

