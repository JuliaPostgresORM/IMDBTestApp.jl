mutable struct Actor <: IActor

  id::Union{Missing,String}
  birthDate::Union{Missing,Int16}
  gender::Union{Missing,Gender.GENDER}
  firstname::Union{Missing,String}
  lastname::Union{Missing,String}
  actorFilmAssos::Union{Missing,Vector{Model.IActorFilmAsso}}

  Actor(args::NamedTuple) = Actor(;args...)
  Actor(;
    id = missing,
    birthDate = missing,
    gender = missing,
    firstname = missing,
    lastname = missing,
    actorFilmAssos = missing,
  ) = (
    x = new(missing,missing,missing,missing,missing,missing,);
    x.id = id;
    x.birthDate = birthDate;
    x.gender = gender;
    x.firstname = firstname;
    x.lastname = lastname;
    x.actorFilmAssos = actorFilmAssos;
    return x
  )

end
