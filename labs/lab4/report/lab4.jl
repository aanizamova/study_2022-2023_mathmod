#case 2
# x'' + 2x' + x = sin(2t)
using DifferentialEquations

function lorenz!(du, u, p, t)
    a, b = p
    du[1] = u[2]
    du[2] = -a*du[1] - b*u[1] + sin(2*t) 
end

const x = 1 
const y = 1
u0 = [x, y]

p = (sqrt(2), 1)
tspan = (0.0, 40.0)
prob = ODEProblem(lorenz!, u0, tspan, p)
sol = solve(prob, dtmax = 0.05)

using Plots;

#решение системы уравнений
plot(sol)
savefig("lab4_jl_3.png")

# #фазовый портрет
plot(sol, vars=(2,1))
savefig("lab4_jl_3_ph.png")
