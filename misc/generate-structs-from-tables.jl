using Pkg
Pkg.activate(".")
# Also need to execute in the pkg applcation the following command:
# `develop TestApp`
# This is because the followign command does not work:
# Pkg.develop(path = "/home/vlaugier/CODE/PostgresqlDAO/TestApp")
using Revise

using Test

# push!(LOAD_PATH, "/home/vlaugier/CODE/PostgresqlDAO.jl/test/test-apps/Pagila/src/Pagila.jl/")



using PostgresqlDAO
using PostgresqlDAO.Tool
using LibPQ
using IMDBTestApp.IMDBTestAppUtils




out_dir = (@__DIR__) * "/out"
dbconn = IMDBTestAppUtils.opendbconn()
Tool.generate_julia_code(dbconn,out_dir)


IMDBTestAppUtils.closedbconn(dbconn)
