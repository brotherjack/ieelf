defmodule Ieelf.Repo do
  use Ecto.Repo,
    otp_app: :ieelf,
    adapter: Ecto.Adapters.Postgres
end
