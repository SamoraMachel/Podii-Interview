defmodule Blogger do
  @moduledoc """
  Documentation for `Blogger`.
  """

  @doc """
  Capitalize list
  Takes in a list input and capitalizes each and every item in the list

  # Example

      iex> Blogger.capitalize_list(["cow", "goat", "sheep"])
      ["COW", "GOAT", "SHEEP"]
  """
  def capitalize_list(list) do
    Enum.map(list, &String.upcase(&1))
  end
end
