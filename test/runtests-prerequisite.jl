using Pkg
Pkg.activate(".")
# Also need to execute in the pkg applcation the following command:
# `develop TestApp`
# This is because the followign command does not work:
# Pkg.develop(path = "/home/vlaugier/CODE/PostgresORM/TestApp")
using Revise

using Test

# Ajout du chemin vers PostgresORM dans le path de julia
push!(LOAD_PATH, ENV["PostgresORM_PATH"])

using PostgresORM

using IMDBTestApp
using IMDBTestApp.IMDBTestAppUtil
using IMDBTestApp.Model

IMDBTestApp.greet()
