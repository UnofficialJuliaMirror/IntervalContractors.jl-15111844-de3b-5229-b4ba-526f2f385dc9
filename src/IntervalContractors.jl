module IntervalContractors

export plus_rev, minus_rev,
        mul_rev,
        power_rev,
        sqr_rev,
        sqrt_rev
        

using IntervalArithmetic
using Compat

const half_pi = IntervalArithmetic.half_pi(Float64)

Base.:∪(f::Function, g::Function) = X -> ( f(X) ∪ g(X) )
Base.:∩(f::Function, g::Function) = X -> ( f(X) ∩ g(X) )  # or f(g(X)) for contractors

include("arithmetic.jl")
include("transformations.jl")
include("powers.jl")
include("trig.jl")

end