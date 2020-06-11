function [T,Q,P,rp] = int(Omega,v,h)

k = 0.15;
R = 0.38;

r = linspace(k*R,R,18);


for i = 1:length(r)
    
    [vi1,res1] = viDis2(r(i), Omega, v);
    vi(i) = vi1;
    res(i) = res1;
    
    [beta1,phi1,theta1,alfa01,t1,q1] = TEP(r(i),vi(i),Omega,v,h);
        
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
rp = T * v / P;

%%%%%%%%%%%%%%%%%%%%%%% Graficas

%%%%%%%%%%% Distribucion velocidad inducida
%figure
%hold on
%plot(r,vi, "marker","+")
%grid on
%grid minor
%title("vi vs r")
%xlabel("r(m)")
%ylabel("vi(m/s)")
%xlim([0,R])

%%%%%%%%%% Distribucion del residuo
%figure
%hold on
%plot(r,res, "marker","+")
%grid on
%grid minor
%title("residuo vs r")
%xlabel("r(m)")
%ylabel("residuo")
%xlim([0,R])

%%%%%%%%%%% Distribucion de angulos
%figure
%hold on
%plot(r,  beta * 180/pi , "marker","+")
%plot(r,   phi * 180/pi , "marker","+")
%plot(r, theta * 180/pi , "marker","+")
%plot(r, alfa0 * 180/pi , "marker","+")
%grid on
%grid minor
%title("Ángulos vs r")
%xlabel("r(m)")
%ylabel("ang(º)")
%legend("beta","phi","theta","alfa0")
%xlim([0,R])


%%%%%%%%%%%%%%%% Distribucion de traccion por unidad de longitud
%figure
%plot(r,t, "marker","+")
%grid on
%grid minor
%title("t vs r")
%xlabel("r(m)")
%ylabel("t(N/m)")
%xlim([0,R])

%%%%%%%%%%%%%% Distribucion de par por unidad de longitud
%figure
%plot(r,q, "marker","+")
%grid on
%grid minor
%title("q vs r")
%xlabel("r(m)")
%ylabel("q(N)")
%xlim([0,R])

end


