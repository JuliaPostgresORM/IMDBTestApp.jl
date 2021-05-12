Horror = Film(name="Le cube 2",year=1999,theme="Horror")
dbconn=IMDBTestAppUtils.opendbconn()
PostgresqlDAO.Controller.create_entity!(Horror,dbconn)
typeof(Horror)
IMDBTestAppUtils.closedbconn(dbconn)
#crée une entité

filmhorreur=
PostgresqlDAO.Controller.retrieve_one_entity(Film(name="saw"),false,dbconn)
@test filmhorreur.name=="saw"
@test ismissing(filmhorreur) == false
#affecte et test

actor =
PostgresqlDAO.Controller.retrieve_one_entity(Actor(firstname="Medi"),false,dbconn)
#affecte un acteur et test

actorFilmAsso1 =
ActorFilmAsso(actor=actor,film=filmhorreur)

PostgresqlDAO.Controller.create_entity!(actorFilmAsso1,dbconn)
#affecte une asso

PostgresqlDAO.Controller.update_entity!(Film(name="saw",year=1999),dbconn)
#update

PostgresqlDAO.Controller.delete_entity_alike(Actor(firstname="Medi"),dbconn)
#supprime
