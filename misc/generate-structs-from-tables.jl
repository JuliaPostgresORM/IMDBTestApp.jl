using Pkg
Pkg.activate(".")
# Also need to execute in the pkg applcation the following command:
# `develop TestApp`
# This is because the followign command does not work:
# Pkg.develop(path = "/home/vlaugier/CODE/PostgresORM/TestApp")
using Revise

using Test

# push!(LOAD_PATH, "/home/vlaugier/CODE/PostgresORM.jl/test/test-apps/Pagila/src/Pagila.jl/")


push!(LOAD_PATH, ENV["PostgresORM_PATH"])
using PostgresORM
using PostgresORM.Tool
using LibPQ

out_dir = (@__DIR__) * "/out"
dbconn = begin
    database = "imdbtestapp"
    user = "imdbtestapp"
    host = "127.0.0.1"
    port = "5432"
    password = "1234"

    LibPQ.Connection("host=$(host)
                             port=$(port)
                             dbname=$(database)
                             user=$(user)
                             password=$(password)
                             "; throw_error=true)
    end
Tool.generate_julia_code(dbconn,out_dir)


close(dbconn)
