# Logistic map cobweb and timeseries
using DrWatson
@quickactivate "NonlinearDynamicsTextbook"
include(srcdir("colorscheme.jl"))
using GLMakie, DynamicalSystems, InteractiveDynamics

rrange = 1:0.001:4.0
lo = Systems.logistic(0.4; r=rrange[1])
fkwargs = [(linewidth = 4.0, color = COLORSCHEME[i+1]) for i in 1:3]

fig = interactive_cobweb(lo, rrange, 2; fkwargs)
record_interaction(fig, projectdir("animations", "4", "logistic_cobweb.mp4"))
