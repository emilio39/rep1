function ef = coef_ef(r,alfa0)

cl = coef_sust(r,alfa0);
cd = coef_resist(r,alfa0);

ef = cl ./ cd;

end