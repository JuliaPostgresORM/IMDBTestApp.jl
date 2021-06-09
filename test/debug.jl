cube2 = Film(codeName = "cube2",year = 2004)
dbconn=IMDBTestAppUtil.opendbconn()
PostgresORM.create_entity!(cube2,dbconn)
PostgresORM.delete_entity(cube2,dbconn)
IMDBTestAppUtil.closedbconn(dbconn)
#crée une entité
