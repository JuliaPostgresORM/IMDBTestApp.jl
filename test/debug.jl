cube2 = Film(codeName = "cube2",year = 2004)
dbconn=IMDBTestAppUtil.opendbconn()
PostgresORM.retrieve_one_entity(cube2,false,dbconn)

PostgresORM.retrieve_entity(cube2,false,dbconn)
PostgresORM.Controller.retrieve_one_entity(cube2,false,dbconn)
PostgresORM.create_entity!(cube2,dbconn)
PostgresORM.delete_entity(cube2,dbconn)
IMDBTestAppUtil.closedbconn(dbconn)
#crée une entité

IMDBTestApp.greet()
