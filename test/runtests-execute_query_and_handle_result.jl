dbconn = IMDBTestAppUtil.opendbconn()
queryString = "SELECT * FROM film"
queryArgs = []
PostgresORM.execute_query_and_handle_result(queryString,
                                            Film,
                                            queryArgs,
                                            false,
                                            dbconn)
IMDBTestAppUtil.closedbconn(dbconn)
