using Pkg

pkg_list = [
    "IJulia",
    "Plots",
    "OhMyREPL",
    "Franklin",
    "DataFrames",
    "Revise",
    "UnicodePlots",
    "ProgressMeter",
    "Weave",
    "Debugger"
]

Pkg.add(pkg_list)
