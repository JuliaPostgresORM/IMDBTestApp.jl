mutable struct Film <: IFilm

  id::Union{Missing,Int32}
  codeName::Union{Missing,String}
  year::Union{Missing,Int16}
  actorFilmAssos::Union{Missing,Vector{Model.IActorFilmAsso}}

  Film(args::NamedTuple) = Film(;args...)
  Film(;
    id = missing,
    codeName = missing,
    year = missing,
    actorFilmAssos = missing,
  ) = (
    x = new(missing,missing,missing,missing,);
    x.id = id;
    x.codeName = codeName;
    x.year = year;
    x.actorFilmAssos = actorFilmAssos;
    return x
  )

end
