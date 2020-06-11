function [beta,phi,theta,alfa0,t_ad,q_ad] = TEP(vi_ad,v_ad,x,b)

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

t_ad = 0.5 * b * vR0_ad^2 * c_ad * (cl * cos(phi0) - cd * sin(phi0));
q_ad = 0.5 * b * vR0_ad^2 * c_ad * x * (cl * sin(phi0) + cd * cos(phi0));

end