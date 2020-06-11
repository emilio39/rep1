function res = p1(v_ad,b,k,Treq_ad)

T_ad = intT(v_ad,b,k);

res = Treq_ad - T_ad;

end