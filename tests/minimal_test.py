# Minimal Python file for pyomo implementation of a LP problem

# librairies
import pyomo.environ as pyo

# model
m = pyo.ConcreteModel()

# variables
m.x = pyo.Var(within=pyo.NonNegativeReals)
m.y = pyo.Var(within=pyo.NonNegativeReals)

# constraints
m.c1 = pyo.Constraint(expr=2*m.x + m.y <= 10)
m.c2 = pyo.Constraint(expr=m.x + m.y <= 4)

# objective : maximise x+y
m.obj = pyo.Objective(expr=m.x+m.y, sense=pyo.maximize)

# solve
opt = pyo.SolverFactory('appsi_highs')
results = opt.solve(m)

# print results
print("status:", results.solver.termination_condition)
print("x = ", pyo.value(m.x), "y = ", pyo.value(m.y))
print("objective =", pyo.value(m.obj))