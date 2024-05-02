# ODE
Solution approximation using Euler's Method and Slope Field representations

1. [Theory](#theory)

- [Problem Statement](#problem-statement)
- [Euler's Method](#eulers-method)
- [Accuracy and Stability](#accuracy-and-stability)
2. [Functions' documentation](#functions-documentation)
- [myeuler](#myeuler)


# Theory

## Problem Statement

Given a first-order ordinary differential equation (ODE) of the form:
$$\frac{dy}{dx} = f(x, y)$$
with an initial condition $y(x_0) = y_0$, we want to find the approximate solution $y(x)$ over a specified interval.

## Euler's Method

Euler's method is a simple numerical technique for solving ordinary differential equations (ODEs) numerically and serves as the foundation for more sophisticated numerical methods.
It approximates the solution to the ODE by performing successive linear approximations based on the derivative of the function $f(x, y)$.

1. **Initial Condition**: Start with the initial condition $y(x_0) = y_0$.
2. **Step Size**: Choose a small step size $h$ that determines the distance between consecutive points along the $x$-axis.
3. **Iteration**: For each step $i$:
   - Calculate the slope $f(x_i, y_i)$ at the current point $(x_i, y_i)$.
   - Use the slope to approximate the change in $y$ over the interval $[x_i, x_{i+1}]$:
     $$\Delta y = f(x_i, y_i) \cdot h$$
   - Update the values of $x$ and $y$ for the next iteration:
     $$x_{i+1} = x_i + h$$
     $$y_{i+1} = y_i + \Delta y$$
4. **Repeat**: Repeat the process until the desired endpoint is reached.

## Accuracy and Stability

Euler's method is a first-order method, meaning its error decreases linearly with the step size $h$. While it's simple and easy to implement, it can suffer from stability issues and accumulate error over long intervals or when dealing with stiff ODEs. To mitigate these issues, smaller step sizes are often used, but this comes at the cost of increased computational effort.

# Functions' documentation

## myeuler

### Purpose
Approximate the solution of the initial value problem $y'(t)=f(t,y(t)), y(t_0)=y_0$ with $t$ belonging to $[t_0,T]$ using Euler's method.

### Input
- `fname`: Function handle for $f(t,y(t))$.
- `y0`: The initial value $(y(t_0)=y_0)$.
- `t0`: The lower limit of integration.
- `T`: The upper limit of integration.
- `N`: The number of subintervals in which $[t_0,T]$ is divided.

### Output
- `t`: Mesh points.
- `y` : Approximate values of the solution at the mesh points.
