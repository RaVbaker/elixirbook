
defmodule MyList do
  @moduledoc """
  Programming Elixir book, chapter ListAndRecursion solutions for problems: 1-3
  """

  @doc """

  ## Example

      iex> MyList.mapsum([1,2,3], &(&1 * &1))
      14
  """
  def mapsum([], _f), do: 0
  def mapsum([a], f), do: f.(a)
  def mapsum([h|t], f), do: mapsum([h], f) + mapsum(t, f)

  @doc """

  ## Example

      iex> MyList.max([1,2,3])
      3
  """
  def max([]), do: nil
  def max([a]), do: a
  def max([a, b]), do: max(a,b)
  def max([a|b]), do: max(a, max(b))

  @doc """

  ## Example

      iex> MyList.ceasar('ryvkve', 13) |> to_string
      "elixir"
  """
  def ceasar([], _n), do: []
  def ceasar([a], n), do: [?a + rem(a-?a + n, ?z - ?a + 1)]
  def ceasar([a|b], n), do: [ceasar([a], n)| ceasar(b, n)]
end
