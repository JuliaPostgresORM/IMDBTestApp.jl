include("runtests-prerequisite.jl")
dbconn = IMDBTestAppUtil.opendbconn()
IMDBTestAppUtil.closedbconn(dbconn)
