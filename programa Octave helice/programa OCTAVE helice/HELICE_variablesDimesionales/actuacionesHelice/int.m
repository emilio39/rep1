function [T,Q,P,Pu,ef,rp] = int(v,Omega,R,b,k,h)

r = linspace(k*R,R,18);

for i = 1:length(r)
    
    [vi1,res1] = viDis2(v,Omega,r(i),b);
    vi(i) = vi1;
    res(i) = res1;
    
    [beta1,phi1,theta1,alfa01,t1,q1] = TEP(vi(i),v,Omega,r(i),b,h);
        
    beta(i) = beta1;
    phi(i) = phi1;
    theta(i) = theta1;
    alfa0(i) = alfa01;
    
    t(i) = t1;
    q(i) = q1;
    
end

T = trapz(r,t);
Q = trapz(r,q);
P = Q * Omega;
Pu = T * v;
ef = P / T;
rp = Pu / P;

%%%%%%%%%%%%%%%%%%%%%%% Graficas

% figure
% hold on
% plot(r,vi, "marker","+")
% grid on
% grid minor
% title("vi vs r")
% xlabel("r(m)")
% ylabel("vi(m/s)")
% xlim([0,R])
% 
% figure
% hold on
% plot(r,res, "marker","+")
% grid on
% grid minor
% title("residuo vs r")
% xlabel("r(m)")
% ylabel("residuo")
% xlim([0,R])
% 
% figure
% hold on
% plot(r,  beta * 180/pi , "marker","+")
% plot(r,   phi * 180/pi , "marker","+")
% plot(r, theta * 180/pi , "marker","+")
% plot(r, alfa0 * 180/pi , "marker","+")
% grid on
% grid minor
% title("Ángulos vs r")
% xlabel("r(m)")
% ylabel("ang(º)")
% legend("beta","phi","theta","alfa0")
% xlim([0,R])
% 
% figure
% plot(r,t, "marker","+")
% grid on
% grid minor
% title("t vs r")
% xlabel("r(m)")
% ylabel("t(N/m)")
% xlim([0,R])
% 
% figure
% plot(r,q, "marker","+")
% grid on
% grid minor
% title("q vs r")
% xlabel("r(m)")
% ylabel("q(N)")
% xlim([0,R])

end


