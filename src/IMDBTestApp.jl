module IMDBTestApp

greet() = print("Hello World!")

module IMDBTestAppUtils

    # using DataFrames

    export opendbconn, closedbconn
    include("./util/utils.jl")

end # module IMDBTestAppUtils

module Model

   using Dates, TimeZones, UUIDs, PostgresqlDAO, PostgresqlDAO.Model
   export Actor, Film, ActorFilmAsso

   include("./Model/abstract-types.jl")
   include("./Model/Actor.jl")
   include("./Model/Film.jl")
   include("./Model/ActorFilmAsso.jl")

 end # module Model

 module DAO
   using ..Model, PostgresqlDAO
   module ActorDAO
     using ..DAO
     using ..Model, PostgresqlDAO,PostgresqlDAO.Model.Enums.CRUDType
     include("./DAO/ActorDAO.jl")
   end
   module ActorFilmAssoDAO
    using ..DAO
    using ..Model, PostgresqlDAO,PostgresqlDAO.Model.Enums.CRUDType
     include("./DAO/ActorFilmAssoDAO.jl")
   end

   module FilmDAO
      using ..DAO
      using ..Model, PostgresqlDAO,PostgresqlDAO.Model.Enums.CRUDType
     include("./DAO/FilmDAO.jl")
  end

 end #module DAO

end # module
