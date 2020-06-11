function res = p1(vi_ad,alfa0,v_ad,b,k,T_adreq)

T_ad = intT(vi_ad,alfa0,v_ad,b,k);

res = T_adreq - T_ad;

end