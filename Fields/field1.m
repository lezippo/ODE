[t,y]=meshgrid(-2:0.17:1.06,-2.25:.25:2.25);
dt=ones(19);
dy=t./(t.^2+1).*y;
quiver(t,y,dt,dy,'k')
hold on
t=-2:.01:1;
c=1;
y1=c*sqrt(t.^2+1); y2=-c*sqrt(t.^2+1); 
plot(t,y1,'b','LineWidth',2);
plot(t,y2,'m','LineWidth',2)
hold off
