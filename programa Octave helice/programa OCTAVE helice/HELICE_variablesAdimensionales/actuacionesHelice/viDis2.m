function [vi_ad,res] = viDis2(v_ad,x,b)

vi_ad = fsolve(@(u)g(u,v_ad,x,b), 0.05);
res = g(vi_ad,v_ad,x,b);

end