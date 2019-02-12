defmodule Db do
  def query(sql)do
    case Ecto.Adapters.SQL.query( Aedmap.Repo ,sql, []) do
      {:ok, struct_data } -> struct_data
      {:error, _struct_data } -> "SQL ERROR!"
    end
  end

  def to_map(result)do
    Enum.map( result.rows, fn row -> list_to_tuple(result.columns,row)end )
  end

  defp list_to_tuple(column, row)do
    List.zip([column, row])
    |> Enum.into(%{})
  end

end
