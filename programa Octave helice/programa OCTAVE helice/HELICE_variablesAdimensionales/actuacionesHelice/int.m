function [T_ad,Q_ad,Pu_ad,ef_ad,rp] = int(v_ad,b,k)

x = linspace(k,1,18);

for i = 1:length(x)
    
    [vi1,res1] = viDis2(v_ad,x(i),b);
    vi_ad(i) = vi1;
    res(i) = res1;
    
    [beta1,phi1,theta1,alfa01,t1,q1] = TEP(vi_ad(i),v_ad,x(i),b);
        
    beta(i) = beta1;
    phi(i) = phi1;
    theta(i) = theta1;
    alfa0(i) = alfa01;
    
    t_ad(i) = t1;
    q_ad(i) = q1;
    
end

T_ad = trapz(x,t_ad);
Q_ad = trapz(x,q_ad);
Pu_ad = T_ad * v_ad;
ef_ad = Q_ad / T_ad;
rp = Pu_ad / Q_ad;

%%%%%%%%%%%%%%%%%%%%%%% Graficas

% figure
% hold on
% plot(x,vi_ad, "marker","+")
% grid on
% grid minor
% title("vi(ad) vs x")
% xlabel("x")
% ylabel("vi(ad)")
% xlim([0,1])
% 
% figure
% hold on
% plot(x,res, "marker","+")
% grid on
% grid minor
% title("residuo vs x")
% xlabel("x")
% ylabel("residuo")
% xlim([0,1])
% 
% figure
% hold on
% plot(x,  beta * 180/pi , "marker","+")
% plot(x,   phi * 180/pi , "marker","+")
% plot(x, theta * 180/pi , "marker","+")
% plot(x, alfa0 * 180/pi , "marker","+")
% grid on
% grid minor
% title("Ángulos vs x")
% xlabel("x")
% ylabel("ang(º)")
% legend("beta","phi","theta","alfa0")
% xlim([0,1])
% 
% figure
% plot(x,t_ad, "marker","+")
% hold on
% grid on
% grid minor
% title("t(ad) vs x")
% xlabel("x")
% ylabel("t(ad)")
% xlim([0,1])
% 
% figure
% plot(x,q_ad, "marker","+")
% grid on
% grid minor
% title("q(ad) vs x")
% xlabel("x")
% ylabel("q(ad)")
% xlim([0,1])

end


