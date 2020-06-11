Omega = 400;
alfa0Grad = 6;
alfa0 = alfa0Grad * pi/180;
v = 70;

k = 0.15;
R = 0.38;
r = linspace(k*R,R,18);

for i = 1:length(r)
    [vi1,beta1] = viDis(r(i),Omega,alfa0,v);
    
    beta(i) = beta1;
    vi(i) = vi1;
end

p = polyfit(r,beta,4);
P0 = p(5);
P1 = p(4);
P2 = p(3);
P3 = p(2);
P4 = p(1);
beta_poly = P0 + P1 * r + P2 * r.^2 + P3 * r.^3 + P4 * r.^4;

P0 = strcat("(",num2str(P0),")");
P1 = strcat("(",num2str(P1),")");
P2 = strcat("(",num2str(P2),")");
P3 = strcat("(",num2str(P3),")");
P4 = strcat("(",num2str(P4),")");
char = strcat("beta(rad) =", P0, " + ", P1 ," * r +", P2, " * r^2 + ", P3, " * r^3 +", P4, " * r^4");
fileID = fopen("beta.txt","w");
fwrite(fileID,char);
fclose(fileID);

figure
hold on
plot(r,beta)
plot(r,beta_poly)
grid on
grid minor
title("beta vs r")
xlabel("r(m)")
ylabel("beta(rad)")
legend(char)

figure
plot(r,vi, "marker", "+")
grid on
grid minor
title("vi vs r")
xlabel("r(m)")
ylabel("vi(m/s)")


