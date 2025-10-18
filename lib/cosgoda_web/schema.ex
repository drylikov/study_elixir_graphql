defmodule CosgodaWeb.Schema do
  use Absinthe.Schema
  alias CosgodaWeb.Resolvers

  import_types CosgodaWeb.Schema.BasicTypes

  query do
    @desc "Sample"
    field :sample, non_null(:string) do
      resolve &Resolvers.Basic.sample/3
    end
  end
end
