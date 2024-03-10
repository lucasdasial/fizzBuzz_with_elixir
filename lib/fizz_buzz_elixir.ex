defmodule FizzBuzzElixir do
  def build(file_name) do
    file_name
    |> File.read()
    |> handleFile()
  end

  defp handleFile({:ok, data}) do
    result =
      data
      |> String.split(" ")
      |> Enum.map(&evalueteNumber/1)

    {:ok, result}
  end

  defp handleFile({:error, cause}) do
    {:error, "Error on reading file, #{cause}"}
  end

  defp evalueteNumber(elem) do
    elem
    |> String.to_integer()
    |> handleFizzOrBuzz()
  end

  defp handleFizzOrBuzz(n) when rem(n, 3) == 0 and rem(n, 5) == 0 do
    :fizzBuzz
  end

  defp handleFizzOrBuzz(n) when rem(n, 3) == 0 do
    :fizz
  end

  defp handleFizzOrBuzz(n) when rem(n, 5) == 0 do
    :buzz
  end

  defp handleFizzOrBuzz(n) do
    n
  end
end
