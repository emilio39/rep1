function res = p2(v_ad,b,k,Qreq_ad)

Q_ad = intQ(v_ad,b,k);

res = Qreq_ad - Q_ad;

end