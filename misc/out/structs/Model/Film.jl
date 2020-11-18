mutable struct Film <: IFilm 

  name::Union{Missing,String}
  year::Union{Missing,Int16}
  theme::Union{Missing,String}
  actorFilmAssos::Union{Missing,Vector{Model.IActorFilmAsso}}

  Film(args::NamedTuple) = Film(;args...)
  Film(;
    name = missing,
    year = missing,
    theme = missing,
    actorFilmAssos = missing,
  ) = (
    x = new(missing,missing,missing,missing,);
    x.name = name;
    x.year = year;
    x.theme = theme;
    x.actorFilmAssos = actorFilmAssos;
    return x
  )

end 