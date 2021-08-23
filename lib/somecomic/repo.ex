defmodule Somecomic.Repo do
  use Ecto.Repo,
    otp_app: :somecomic,
    adapter: Ecto.Adapters.Postgres
end
