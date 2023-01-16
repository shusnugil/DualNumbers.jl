module DualNumbers

export Dual

"""
    Dual: a dual number
"""

struct Dual{T}
    real::T
    dual::T
end

function Base.:+(p::Dual, q::Dual)
    x = p.real + q.real
    y = p.dual + q.dual
    return Dual(x,y)
end

function Base.:*(p::Dual, q::Dual)
    x = p.real * q.real
    y = p.real * q.dual + p.dual * q.real
    return Dual(x,y)
end

function Base.:-(p::Dual, q::Dual)
    x = p.real - q.real
    y = p.dual - q.dual
    return Dual(x,y)
end

#function Base.:-(x::Dual) = ()
end # module DualNumbers