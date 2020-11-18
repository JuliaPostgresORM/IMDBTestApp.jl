using LibPQ

function opendbconn()
    database = "imdbtestapp"
    user = "imdbtestapp"
    host = "localhost"
    port = "5433"
    password = "Medoxx95"

    conn = LibPQ.Connection("host=$(host)
                             port=$(port)
                             dbname=$(database)
                             user=$(user)
                             password=$(password)
                             "; throw_error=true)
    return conn
end

function closedbconn(conn)

    close(conn)
end
