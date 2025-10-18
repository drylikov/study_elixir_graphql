defmodule Cosgoda.Repo do
  use Ecto.Repo,
    otp_app: :cosgoda,
    adapter: Ecto.Adapters.Postgres
end
