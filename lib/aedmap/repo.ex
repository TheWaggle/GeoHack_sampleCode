defmodule Aedmap.Repo do
  use Ecto.Repo,
    otp_app: :aedmap,
    adapter: Ecto.Adapters.Postgres
end
