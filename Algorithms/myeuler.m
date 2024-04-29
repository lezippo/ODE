function [t,y]=myeuler(fname,y0,t0,T,N)
% Purpose: Approximate the solution of the initial value problem y'(t)=f(t,y(t)),
% y(t0)=y0 with t belonging to [t0,T] using the Euler's method.
%
% Syntax: [t,y]=myeuler(fname,y0,t0,T,N)
% Input:
% fname:   name of the function f(t,y(t)) (see line 3)
% y0:      initial value (y(t0)=y0)
% t0:      lower limit of integration
% T:       upper limit of integration
% N:       number of subintervals in which [t0,T] is divided
% Output:
% t:       mesh points: we discretize the problem, instead of computing the exact
%          solution of the differential equation, we compute its value at some points.
%          By construction, these points will be equidistant
% y:       approximate values of the solution at the mesh points
%
% Example:
% y0=2;
% t0=0;
% T=6;
% dy=@(t,y) (y+t^2-2)/(t+1);
% [t,y]=myeuler(dy,y0,t0,T,N);
%
% Author: Luigi Emanuele Zippo

h=(T-t0)/N;
t=zeros(1,N+1);
y=t;

% Initial value
t(1)=t0;
y(1)=y0;

for k=2:N+1
    % Compute the mesh points
    t(k)=t0+(k-1)*h;

    % Approximate the solution using tangents. Graphically, starting from (t0,y0),
    % we consider the tangent to the graph of the solution passing through it.
    % We take the value corresponding to t1 on the tangent, this will be y1.
    % Now we consider a new line, passing through (t1,y1) and tangent to the
    % solution curve with initial value y1. We proceed like this until T,
    % obtaining y1, y2, ..., yn approximations of the solution
    y(k)=y(k-1)+h*fname(t(k-1),y(k-1));
end
end
