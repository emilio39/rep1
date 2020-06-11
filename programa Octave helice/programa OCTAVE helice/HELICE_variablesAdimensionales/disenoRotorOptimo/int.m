function [T_ad,Q_ad,Pu_ad,ef_ad,rp] = int(vi_ad,alfa0,v_ad,b,k)

x = linspace(k,1,18);

for i = 1:length(x)
    
    [beta1,phi1,theta1,t1,q1,c1] = TEP(vi_ad,alfa0,v_ad,x(i),b);
    
    vi_adbis(i) = vi_ad;
    beta(i) = beta1;
    phi(i) = phi1;
    theta(i) = theta1;
    alfa0bis(i) = alfa0;
    t_ad(i) = t1;
    q_ad(i) = q1;
    c_ad(i) = c1;
    
end

T_ad = trapz(x,t_ad);
Q_ad = trapz(x,q_ad);
Pu_ad = T_ad * v_ad;
ef_ad = Q_ad / T_ad;
rp = Pu_ad / Q_ad;

%%%%%%%%%%%%%%%%%%%%%%% polinomios de cuerda y torsion

p = polyfit(x,beta,6);
beta_poly6 = p(7) + p(6) * x + p(5) * x.^2 + p(4) * x.^3 + p(3) * x.^4 + p(2) * x.^5 + p(1) * x.^6;

P0 = strcat("(",num2str(p(7),10),")");
P1 = strcat("(",num2str(p(6),10),")");
P2 = strcat("(",num2str(p(5),10),")");
P3 = strcat("(",num2str(p(4),10),")");
P4 = strcat("(",num2str(p(3),10),")");
P5 = strcat("(",num2str(p(2),10),")");
P6 = strcat("(",num2str(p(1),10),")");
char_beta = strcat("beta(rad) =", P0, " + ", P1 ," * x +", P2, " * x^2 + ", P3, " * x^3 +", P4, " * x^4 + ", P5, " * x^5 + ", P6, " * x^6");
fileID = fopen("beta.txt","w");
fwrite(fileID,char_beta);
fclose(fileID);

p = polyfit(x,c_ad,6);
c_poly6 = p(7) + p(6) * x + p(5) * x.^2 + p(4) * x.^3 + p(3) * x.^4 + p(2) * x.^5 + p(1) * x.^6;

P0 = strcat("(",num2str(p(7),10),")");
P1 = strcat("(",num2str(p(6),10),")");
P2 = strcat("(",num2str(p(5),10),")");
P3 = strcat("(",num2str(p(4),10),")");
P4 = strcat("(",num2str(p(3),10),")");
P5 = strcat("(",num2str(p(2),10),")");
P6 = strcat("(",num2str(p(1),10),")");
char_c = strcat("c(m) =", P0, " + ", P1 ," * x +", P2, " * x^2 + ", P3, " * x^3 +", P4, " * x^4 + ", P5, " * x^5 + ", P6, " * x^6");
fileID = fopen("cuerda.txt","w");
fwrite(fileID,char_c);
fclose(fileID);

%%%%%%%%%%%%%%%%%%%%%%%%%% Graficas

% figure
% hold on
% plot(x,beta,"marker", "+")
% plot(x,beta_poly6,"marker","o")
% grid on
% grid minor
% title("beta vs x")
% xlabel("x")
% ylabel("beta(rad)")
% legend(char_beta)
% 
% figure
% hold on
% plot(x,c_ad, "marker", "+")
% plot(x,c_poly6,"marker","o")
% grid on
% grid minor
% title("c(ad) vs x")
% xlabel("x")
% ylabel("c(ad)")
% legend(char_c)
% 
% figure
% plot(x,vi_adbis, "marker","+")
% grid on
% grid minor
% title("vi(ad) vs x")
% xlabel("x")
% ylabel("vi(ad)")
% xlim([0,1])
% 
% figure
% hold on
% plot(x,  beta * 180/pi , "marker","+")
% plot(x,   phi * 180/pi , "marker","+")
% plot(x, theta * 180/pi , "marker","+")
% plot(x, alfa0bis * 180/pi , "marker","+")
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


