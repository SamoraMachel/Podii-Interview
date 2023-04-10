defmodule Blogger do
  @moduledoc """
  Documentation for `Blogger`.
  """

  @blog_url "https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91"


  @doc """
  Fetch Blog
  Uses the HTTPoison Library to make a get request to a blog url (@blog_url)

  # Example

    iex> Blogger.fetch_blog()
    %HttpResponse{...}
  """
  @spec fetch_blog() :: HTTPoison.Response | {:error, any()}
  def fetch_blog do
    HTTPoison.start()
    try do
      HTTPoison.get!(@blog_url)
    rescue
      error in HTTPoison.Error -> {:error, error.reason}
    end
  end

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
