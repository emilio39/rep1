v_ad = 0.36842;
% Treq_ad = 0.1;
vi_ad = 0.0578947;
b = 6;
k = 0.15;
alfa0Grad = 10.5;
alfa0 = alfa0Grad * pi/180;

% vi_ad = fsolve(@(x)p1(x,alfa0,v_ad,b,k,Treq_ad),0);
[T_ad,Q_ad,Pu_ad,ef_ad,rp] = int(vi_ad,alfa0,v_ad,b,k);

% [G_TCM,T_TCM,P_TCM,Pu_TCM,ef_TCM,rp_TCM,vi_TCM] = TCM(v,h,R,k,Treq);