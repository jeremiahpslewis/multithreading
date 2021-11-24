using LinearAlgebra

n_ops = 1e8

println("Run with $(Threads.nthreads()) thread(s):")

a = zeros(Threads.nthreads())

@time Threads.@threads for i = 1:n_ops
    a[Threads.threadid()] += 1
end

println("")
