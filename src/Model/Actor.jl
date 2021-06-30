mutable struct Actor <: IActor 

  id::Union{Missing,String}
  birthDate::Union{Missing,Int16}
  gender::Union{Missing,Gender.GENDER}
  firstname::Union{Missing,String}
  lastname::Union{Missing,String}
  actorFilmAssoes::Union{Missing,Vector{Model.IActorFilmAsso}}

  Actor(args::NamedTuple) = Actor(;args...)
  Actor(;
    id = missing,
    birthDate = missing,
    gender = missing,
    firstname = missing,
    lastname = missing,
    actorFilmAssoes = missing,
  ) = (
    x = new(missing,missing,missing,missing,missing,missing,);
    x.id = id;
    x.birthDate = birthDate;
    x.gender = gender;
    x.firstname = firstname;
    x.lastname = lastname;
    x.actorFilmAssoes = actorFilmAssoes;
    return x
  )

end 