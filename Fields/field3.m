[t,y]=meshgrid(-2:0.15:1,-25:1.5:5);
dt=ones(21);
dy=-y+exp(-t);
quiver(t,y,dt,dy,'k')
hold on
t=-2:.01:1;
c=1;
y1=exp(-t).*(t+c); 
y2=exp(-t).*(t-c); 
plot(t,y1,'b','LineWidth',2);
plot(t,y2,'m','LineWidth',2)
hold off