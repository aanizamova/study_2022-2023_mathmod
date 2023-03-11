using Plots
using DifferentialEquations

function ode_fn(du, u, p, t)
    a, b, c, d = p
    du[1] = -a*u[1] + b * u[1] * u[2]
    du[2] = c * u[2] - d * u[1] * u[2]
end

x0 = 0.33 / 0.03
y0 = 0.13 / 0.042

p = (0.13, 0.042, 0.33, 0.03)
u0 = [x0, y0]
tspan = (0.0, 400.0)
prob = ODEProblem(ode_fn, u0, tspan, p)
sol = solve(prob, dtmax=0.05)

#решение системы уравнений
plot(sol)
savefig("lab5_jl_1.png")

# #фазовый портрет
plot(sol, vars=(2,1))
savefig("lab5_jl_ph_1.png")
