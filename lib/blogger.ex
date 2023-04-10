defmodule Blogger do
  @moduledoc """
  Documentation for `Blogger`.
  """

  
  defp capitalize_word(word) do
    String.upcase(word)
  end

  @doc """
  Capitalize list
  Takes in a list input and capitalizes each and every item in the list

  # Example

      iex> Blogger.capitalize_list(["cow", "goat", "sheep"])
      ["COW", "GOAT", "SHEEP"]
  """
  def capitalize_list(list) do
    Enum.map(list, &capitalize_word(&1))
  end
end
