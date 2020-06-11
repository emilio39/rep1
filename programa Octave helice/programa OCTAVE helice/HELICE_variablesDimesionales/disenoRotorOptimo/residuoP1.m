vi = 1:1:100;

v = 0;
h = 0;
Treq = 300;
R = 0.1:0.03:0.3;
b = 6;
k = 0.15;

alfa0Grad = 10.5;
Omega = 700;
alfa0 = alfa0Grad * pi/180;

for j = 1:length(R)
for i = 1:length(vi)
    res(i,j) =  p1(vi(i),alfa0,v,Omega,R(j),b,k,h,Treq);
end
end

figure
hold on
for j = 1:length(R)
plot(vi,res(:,j))
end
grid on
grid minor


