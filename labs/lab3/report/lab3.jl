using Plots
using DifferentialEquations

function p(t)
  return sin(t)
end

function q(t)
  return cos(3*t)
end

u0 = [25000, 13000]
tspan = (0.0, 1.0)
pp = [-0.33, -0.88, -0.44, -0.77]

function lorenz!(du, u, pp, t)
	a, b, c, h = pp
	du[1] = a*u[1] + b*u[2] + p(t)
	du[2] = c*u[1] + h*u[2] + q(t)
end

prob = ODEProblem(lorenz!, u0, tspan, pp)

sol = solve(prob)

plt = plot(sol)


savefig(plt, "lab3_2.png")
