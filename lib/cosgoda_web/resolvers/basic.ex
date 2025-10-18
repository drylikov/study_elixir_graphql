defmodule CosgodaWeb.Resolvers.Basic do
  def sample(_parent, _args, _resolution) do
    {:ok, "Hello world!"}
  end
end
