function [T,Q,P,Pu,ef,rp] = int(vi,alfa0,v,Omega,R,b,k,h)

r = linspace(k*R,R,18);

for i = 1:length(r)
    
    [beta1,phi1,theta1,t1,q1,c1] = TEP(vi,alfa0,v,Omega,r(i),b,h);
    
    vibis(i) = vi;
    beta(i) = beta1;
    phi(i) = phi1;
    theta(i) = theta1;
    alfa0bis(i) = alfa0;
    t(i) = t1;
    q(i) = q1;
    c(i) = c1;
    
end

T = trapz(r,t);
Q = trapz(r,q);
P = Q * Omega;
Pu = T * v;
ef = P / T;
rp = Pu / P;

%%%%%%%%%%%%%%%%%%%%%%% polinomios de cuerda y torsion

% p = polyfit(r,beta,6);
% beta_poly6 = p(7) + p(6) * r + p(5) * r.^2 + p(4) * r.^3 + p(3) * r.^4 + p(2) * r.^5 + p(1) * r.^6;
% 
% P0 = strcat("(",num2str(p(7),10),")");
% P1 = strcat("(",num2str(p(6),10),")");
% P2 = strcat("(",num2str(p(5),10),")");
% P3 = strcat("(",num2str(p(4),10),")");
% P4 = strcat("(",num2str(p(3),10),")");
% P5 = strcat("(",num2str(p(2),10),")");
% P6 = strcat("(",num2str(p(1),10),")");
% char_beta = strcat("beta(rad) =", P0, " + ", P1 ," * r +", P2, " * r^2 + ", P3, " * r^3 +", P4, " * r^4 + ", P5, " * r^5 + ", P6, " * r^6");
% fileID = fopen("beta.txt","w");
% fwrite(fileID,char_beta);
% fclose(fileID);
% 
% p = polyfit(r,c,6);
% c_poly6 = p(7) + p(6) * r + p(5) * r.^2 + p(4) * r.^3 + p(3) * r.^4 + p(2) * r.^5 + p(1) * r.^6;
% 
% P0 = strcat("(",num2str(p(7),10),")");
% P1 = strcat("(",num2str(p(6),10),")");
% P2 = strcat("(",num2str(p(5),10),")");
% P3 = strcat("(",num2str(p(4),10),")");
% P4 = strcat("(",num2str(p(3),10),")");
% P5 = strcat("(",num2str(p(2),10),")");
% P6 = strcat("(",num2str(p(1),10),")");
% char_c = strcat("c(m) =", P0, " + ", P1 ," * r +", P2, " * r^2 + ", P3, " * r^3 +", P4, " * r^4 + ", P5, " * r^5 + ", P6, " * r^6");
% fileID = fopen("cuerda.txt","w");
% fwrite(fileID,char_c);
% fclose(fileID);


%%%%%%%%%%%%%%%%%%%%%%%%%% Graficas

% figure
% hold on
% plot(r,beta,"marker", "+")
% plot(r,beta_poly6,"marker","o")
% grid on
% grid minor
% title("beta vs r")
% xlabel("r(m)")
% ylabel("beta(rad)")
% legend(char_beta)
% 
% figure
% hold on
% plot(r,c, "marker", "+")
% plot(r,c_poly6,"marker","o")
% grid on
% grid minor
% title("c vs r")
% xlabel("r(m)")
% ylabel("c(m)")
% legend(char_c)
% 
% figure
% plot(r,vibis, "marker","+")
% grid on
% grid minor
% title("vi vs r")
% xlabel("r(m)")
% ylabel("vi(m/s)")
% xlim([0,R])
% 
% figure
% hold on
% plot(r,  beta * 180/pi , "marker","+")
% plot(r,   phi * 180/pi , "marker","+")
% plot(r, theta * 180/pi , "marker","+")
% plot(r, alfa0bis * 180/pi , "marker","+")
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


