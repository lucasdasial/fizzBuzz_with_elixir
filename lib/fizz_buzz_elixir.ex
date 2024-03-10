defmodule FizzBuzzElixir do
  def build file_name do
    file_name
    |> File.read()
    |>handleFile()
  end

  def handleFile({:ok, result}) do
    result
    |> String.split(" ")
    |> Enum.map(&String.to_integer/1)
  end

  def handleFile({:error , cause}) do
    "Error on reading file, #{cause}"
  end
end
