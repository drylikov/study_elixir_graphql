defmodule CosgodaWeb.Context do
  @behaviour Plug

  def init(opts), do: opts

  def call(conn, _) do
    Absinthe.Plug.put_options conn, context: build_context(conn)
  end

  def build_context(_conn) do
    %{current_user: nil}
  end
end
