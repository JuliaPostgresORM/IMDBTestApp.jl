mutable struct ActorFilmAsso <: IActorFilmAsso 

  actor::Union{Missing,Model.IActor}
  film::Union{Missing,Model.IFilm}

  ActorFilmAsso(args::NamedTuple) = ActorFilmAsso(;args...)
  ActorFilmAsso(;
    actor = missing,
    film = missing,
  ) = (
    x = new(missing,missing,);
    x.actor = actor;
    x.film = film;
    return x
  )

end 