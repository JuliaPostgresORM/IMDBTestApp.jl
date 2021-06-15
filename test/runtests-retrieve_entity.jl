cube2 = Film(codeName = "cube2",year = 2004)

dbconn=IMDBTestAppUtil.opendbconn()

PostgresORM.retrieve_one_entity(cube2,false,dbconn)
PostgresORM.retrieve_entity(cube2,false,dbconn)

IMDBTestAppUtil.closedbconn(dbconn)
