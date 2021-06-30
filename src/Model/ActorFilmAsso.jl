mutable struct ActorFilmAsso <: IActorFilmAsso 

  film::Union{Missing,Model.IFilm}
  actor::Union{Missing,Model.IActor}

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