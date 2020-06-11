v = 0:10:90;
h = 2000;
P = 60000;

for i = 1:length(v)
    
    Omega(i) = fsolve(@(x)p3(x,v(i),h,P),500);
    [T1,Q1,P1,rp1] = int(Omega(i),v(i),h);
    [G0,T0,P0,Pu0,rp0,vi0] = TCM(v(i),h,0.38,P);
    
    T(i) = T1;
    Q(i) = Q1;
    P2(i) = P1;
    rp(i) = rp1;
    
    T_TCM(i) = T0;
    P_TCM(i) = P0;
    Pu_TCM(i) = Pu0;
    rp_TCM(i) = rp0;
    
end

figure
hold on
plot(v,T,"marker","+")
plot(v,T_TCM, "marker","+")
grid on
grid minor
title("T vs v")
xlabel("v(m/s)")
ylabel("T(N)")
legend("TEP + TCM","TCM")


figure
plot(v,Q,"marker","+")
grid on
grid minor
title("Q vs v")
xlabel("v(m/s)")
ylabel("Q(N.m)")

figure
plot(v,Omega,"marker","+")
grid on
grid minor
title("Omega vs v")
xlabel("v(m/s)")
ylabel("Omega(rad/s)")

figure
hold on
plot(v,P2,"marker","+")
plot(v,P_TCM, "marker","+")
grid on
grid minor
title("P vs v")
xlabel("v(m/s)")
ylabel("P(W)")
legend("TEP + TCM", "TCM")


figure
hold on
plot(v,rp,"marker","+")
plot(v,rp_TCM,"marker","+")
grid on
grid minor
title("rp vs v")
xlabel("v(m/s)")
ylabel("rp")
legend("TEP + TCM","TCM")