module IMDBTestApp

   greet() = print("Hello World!")

   module Enum
    include("./Enum/enums.jl")
   end # module Enum

   module IMDBTestAppUtil

       # using DataFrames

       export opendbconn, closedbconn
       include("./IMDBTestAppUtil/utils.jl")

   end # module IMDBTestAppUtils

   module Model

      using Dates, TimeZones, UUIDs, PostgresORM
      using ..Enum.Gender
      export Actor, Film, ActorFilmAsso

      include("./Model/abstract-types.jl")
      include("./Model/Actor.jl")
      include("./Model/Film.jl")
      include("./Model/ActorFilmAsso.jl")

   end # module Model

   module ORM

      module ActorORM
        using ..ORM, ...Model
        using PostgresORM
        include("./ORM/ActorORM.jl")
      end
      module ActorFilmAssoORM
        using ..ORM, ...Model
        using PostgresORM
        include("./ORM/ActorFilmAssoORM.jl")
      end
      module FilmORM
        using ..ORM, ...Model
        using PostgresORM
        include("./ORM/FilmORM.jl")
     end

   end #module ORM

end # module
