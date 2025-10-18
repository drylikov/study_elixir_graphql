defmodule CosgodaWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :cosgoda

  socket "/socket", CosgodaWeb.UserSocket,
    websocket: true,
    longpoll: false

  if code_reloading? do
    plug Phoenix.CodeReloader
  end

  plug Plug.RequestId
  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  # The session will be stored in the cookie and signed,
  # this means its contents can be read but not tampered with.
  # Set :encryption_salt if you would also like to encrypt it.
  plug Plug.Session,
    store: :cookie,
    key: "_cosgoda_key",
    signing_salt: "fIYnuhTT"

  plug CosgodaWeb.Router
end
