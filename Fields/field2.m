[t,y]=meshgrid(-5:.5:5,-7:.5:3);
dt=ones(21);
dy=y+t;
quiver(t,y,dt,dy,'k')
hold on
t=-2:.01:1;
c=2;
y1=c*exp(t)-t-1; 
y2=-c*exp(t)-t-1; 
plot(t,y1,'b','LineWidth',2);
plot(t,y2,'m','LineWidth',2)
hold off
