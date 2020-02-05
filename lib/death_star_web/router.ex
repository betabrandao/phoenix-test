defmodule DeathStarWeb.Router do
  use DeathStarWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", DeathStarWeb do
    pipe_through :api
    get "/swapi", StarshipController, :index
  end
  
end
