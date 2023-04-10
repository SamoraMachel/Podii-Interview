defmodule BloggerTest do
  use ExUnit.Case

  test "returns uppercase letters from a list of lowercase letters" do
    cap_list = Blogger.capitalize_list(["cow", "goat", "sheep"])

    Enum.all?(cap_list, fn item ->
      assert String.contains?(item, Enum.map(?A..?Z, &<<&1>>))
      refute String.contains?(item, Enum.map(?a..?z, &<<&1>>))
    end)
  end

  test "returns a HTTPoison.Response when fetch blog is called" do
    result = Blogger.fetch_blog

    assert check_result_response(result)
  end

  def check_result_response(%HTTPoison.Response{}), do: true

  def check_result_response(_), do: false
end
