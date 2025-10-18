defmodule CosgodaWeb.Router do
  use CosgodaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
    plug CosgodaWeb.Context
  end

  scope "/api" do
    pipe_through :api

    forward "/graphiql",
      Absinthe.Plug.GraphiQL,
      schema: CosgodaWeb.Schema

    forward "/graphql",
      Absinthe.Plug,
      schema: CosgodaWeb.Schema
  end
end
