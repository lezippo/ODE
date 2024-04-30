y0=2;
t0=0;
T=6;

hold on

dy=@(t,y) (y+t^2-2)/(t+1);

sol=@(t) t.^2+2*t+2-2.*(t+1).*log(t+1);
fplot(sol,'m')

for k=1:3

N=10*k;


[t,y]=myeuler(dy,y0,t0,T,N);

plot(t,y,'.','LineWidth',2)

end

legend('soluzione','N=10','N=20','N=30')

