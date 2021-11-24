using PerformanceTestTools
using Logging

Logging.disable_logging(Logging.Info)

PerformanceTestTools.@include_foreach(
    "threaded_workload.jl",
    [["JULIA_NUM_THREADS" => "1"], ["JULIA_NUM_THREADS" => "2"], ["JULIA_NUM_THREADS" => "4"], ["JULIA_NUM_THREADS" => "6"]],
)
