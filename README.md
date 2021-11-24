# Rudimentary Multithreading Diagnostic for Julia

## How to Use

1. Install Julia v1.7 (<https://julialang.org/downloads/#upcoming_release>)

From `multithreading/` directory, run:

```julia
julia multithreading_test.jl
```

## Expected Output

```bash
 julia multithreading_test.jl
  Activating project at `~/git/multithreading`
Run with 1 thread(s):
  782.852 ms (20000007 allocations: 305.18 MiB)

Run with 2 thread(s):
  440.827 ms (20000012 allocations: 305.18 MiB)

Run with 4 thread(s):
  230.229 ms (20000022 allocations: 305.18 MiB)

Run with 6 thread(s):
  489.854 ms (20000032 allocations: 305.18 MiB)
```
