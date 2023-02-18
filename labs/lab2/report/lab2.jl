# Кривая преследования

# скорость волка и зайца относятся как волк/заяц = k
using Plots

include("RK.jl")

function F(r)
  k = 4.0
  return r / sqrt(k^2-1)
end

const r₀ = 2.4
const h = 0.01
const θ₀ = 0.0
const θ₁ = 4π

Θ, R = RK.RKp6n1(F, r₀, h, θ₀, θ₁)


plt = plot(
  proj = :polar,
  aspect_ratio=:equal,
  dpi=300,
  title="lab2",
  legend=true)



plot!(
  plt,
  Θ,
  R,
  label="Траектория катера",
  color=:red)

plot!(
  plt,
  [1, 1]*19/25*pi,
  [0, 100],
  label = "Траектория лодки",
  color=:blue)


savefig(plt, "lab2.png")
