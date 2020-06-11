b = 6;
k = 0.15;
v_ad = 0.36842;
% Treq_ad = 0.1;

% v_ad = fsolve(@(u)p1(u,b,k,Treq_ad),0.5);
[T_ad,Q_ad,Pu_ad,ef,rp] = int(v_ad,b,k);

