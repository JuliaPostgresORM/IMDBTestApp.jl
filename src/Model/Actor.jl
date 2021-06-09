mutable struct Actor <: IActor 

  id::Union{Nothing,Missing,String}
  birthDate::Union{Nothing,Missing,Int16}
  gender::Union{Nothing,Missing,Gender.GENDER}
  firstname::Union{Nothing,Missing,String}
  lastname::Union{Nothing,Missing,String}
  actorFilmAssos::Union{Nothing,Missing,Vector{Model.IActorFilmAsso}}

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