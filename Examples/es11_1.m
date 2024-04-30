hold on
y0=1;
t0=0;
T=2;
N=10;

lambda=-5;

fun=@(t,y) lambda*y;

[t,y]=myeuler(fun,y0,t0,T,N);

figure(1)
plot(t,y,'m.','Linewidth',2)

lambda=-50;

fun=@(t,y) lambda*y0;

[t,y]=myeuler(fun,y0,t0,T,N);

plot(t,y,'b.','Linewidth',2)

lambda=-500;

fun=@(t,y) lambda*y0;

[t,y]=myeuler(fun,y0,t0,T,N);

plot(t,y,'g.','Linewidth',2)

legend('lambda=-5','lambda=-50','lambda=-500')



figure (2)
hold on
lambda=-3/0.04;

N=10;

fun=@(t,y) lambda*y;

[t,y]=myeuler(fun,y0,t0,T,N);
plot(t,y,'m')

N=50;
[t,y]=myeuler(fun,y0,t0,T,N);
plot(t,y,'b')

N=100;
[t,y]=myeuler(fun,y0,t0,T,N);
plot(t,y,'k')
legend('N=10','N=50','N=100')










