defmodule Aedmap.Repo.Migrations.CreateLocations do
  use Ecto.Migration

  def change do
    create table(:locations) do
      add :latitude, :float
      add :longitude, :float
      add :locationName, :string

      timestamps()
    end

  end
end
