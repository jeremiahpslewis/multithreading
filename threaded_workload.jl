using LinearAlgebra
using BenchmarkTools
n_ops = 1e7

println("Run with $(Threads.nthreads()) thread(s):")

a = zeros(Threads.nthreads())

@btime Threads.@threads for i = 1:n_ops
    a[Threads.threadid()] += 1
end

println("")
