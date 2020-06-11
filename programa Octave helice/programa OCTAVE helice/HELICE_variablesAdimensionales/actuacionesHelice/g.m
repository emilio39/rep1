function res = g(vi_ad,v_ad,x,b)

c_ad = cuerda(x);
beta = torsion(x);

vR_ad = (v_ad^2 + x^2)^0.5;
vR0_ad = ( vR_ad^2 + vi_ad^2 )^0.5;

phi = atan(v_ad / x);
theta = atan( vi_ad / vR_ad );
alfa0 = beta - phi - theta;
phi0 = phi + theta;

cl = coef_sust(x,alfa0);
cd = coef_resist(x,alfa0);

res = 8 * pi * x * vi_ad * cos(phi) * (v_ad + vi_ad * cos(phi)) - b * vR0_ad^2 * c_ad * (cl * cos(phi0) - cd * sin(phi0));

end