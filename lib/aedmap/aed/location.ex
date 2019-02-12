defmodule Aedmap.AED.Location do
  use Ecto.Schema
  import Ecto.Changeset


  schema "locations" do
    field :latitude, :float
    field :locationName, :string
    field :longitude, :float

    timestamps()
  end

  @doc false
  def changeset(location, attrs) do
    location
    |> cast(attrs, [:latitude, :longitude, :locationName])
    |> validate_required([:latitude, :longitude, :locationName])
  end
end
