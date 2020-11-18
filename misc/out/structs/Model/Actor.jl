mutable struct Actor <: IActor 

  id::Union{Missing,Int32}
  firstname::Union{Missing,String}
  lastname::Union{Missing,String}
  birthdate::Union{Missing,Date}
  actorFilmAssos::Union{Missing,Vector{Model.IActorFilmAsso}}

  Actor(args::NamedTuple) = Actor(;args...)
  Actor(;
    id = missing,
    firstname = missing,
    lastname = missing,
    birthdate = missing,
    actorFilmAssos = missing,
  ) = (
    x = new(missing,missing,missing,missing,missing,);
    x.id = id;
    x.firstname = firstname;
    x.lastname = lastname;
    x.birthdate = birthdate;
    x.actorFilmAssos = actorFilmAssos;
    return x
  )

end 