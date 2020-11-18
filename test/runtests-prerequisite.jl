using Pkg
Pkg.activate(".")
# Also need to execute in the pkg applcation the following command:
# `develop TestApp`
# This is because the followign command does not work:
# Pkg.develop(path = "/home/vlaugier/CODE/PostgresqlDAO/TestApp")
using Revise

using Test

# Ajout du chemin vers PostgresqlDAO dans le path de julia
push!(LOAD_PATH, ENV["POSTGRESQLDAO_PATH"])

using PostgresqlDAO
using PostgresqlDAO.PostgresqlDAOUtil
using PostgresqlDAO.Controller
using PostgresqlDAO.Model.Enums.CRUDType
using IMDBTestApp
using IMDBTestApp.IMDBTestAppUtils
using IMDBTestApp.Model
