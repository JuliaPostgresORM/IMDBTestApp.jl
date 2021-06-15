dbconn = IMDBTestAppUtil.opendbconn()
queryString = "SELECT * FROM film"
queryArgs = []
PostgresORM.execute_plain_query(queryString,queryArgs,dbconn)
IMDBTestAppUtil.closedbconn(dbconn)
