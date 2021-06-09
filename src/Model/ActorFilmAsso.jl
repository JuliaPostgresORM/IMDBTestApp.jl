mutable struct ActorFilmAsso <: IActorFilmAsso 

  film::Union{Nothing,Missing,Model.IFilm}
  actor::Union{Nothing,Missing,Model.IActor}

  ActorFilmAsso(args::NamedTuple) = ActorFilmAsso(;args...)
  ActorFilmAsso(;
    film = missing,
    actor = missing,
  ) = (
    x = new(missing,missing,);
    x.film = film;
    x.actor = actor;
    return x
  )

end 