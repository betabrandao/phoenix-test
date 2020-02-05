defmodule DeathStarWeb.StarshipController do
    
    use DeathStarWeb, :controller

    def index(conn, _opts) do
        send_resp(conn, 200, "status ok")
    end
    
end