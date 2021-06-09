using LibPQ

function opendbconn()
    database = "imdbtestapp"
    user = "imdbtestapp"
    host = "127.0.0.1"
    port = "5432"
    password = "1234"

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
