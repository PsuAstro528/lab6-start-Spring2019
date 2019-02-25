using Distributed
@everywhere import Pkg
@everywhere Pkg.activate(".")
using NBInclude
println("# About to run notebook")
flush(stdout)
@nbinclude("ex2.ipynb")
println("# Completed running notebook")
flush(stdout)

