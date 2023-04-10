defmodule BloggerTest do
  use ExUnit.Case

  test "returns uppercase letters from a list of lowercase letters" do
    cap_list = Blogger.capitalize_list(["cow", "goat", "sheep"])

    Enum.all?(cap_list, fn item ->
      assert String.contains?(item, Enum.map(?A..?Z, &<<&1>>))
      refute String.contains?(item, Enum.map(?a..?z, &<<&1>>))
    end)
  end
end
