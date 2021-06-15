include("runtests-prerequisite.jl")

cube2 = Film(codeName = "cube2",year = 2004)

# Clean
dbconn=IMDBTestAppUtil.opendbconn()
PostgresORM.delete_entity_alike(cube2,dbconn)
IMDBTestAppUtil.closedbconn(dbconn)

dbconn=IMDBTestAppUtil.opendbconn()
PostgresORM.create_entity!(cube2,dbconn)
IMDBTestAppUtil.closedbconn(dbconn)

# Clean
dbconn=IMDBTestAppUtil.opendbconn()
PostgresORM.delete_entity(cube2,dbconn)
IMDBTestAppUtil.closedbconn(dbconn)
