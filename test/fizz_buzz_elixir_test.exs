defmodule FizzBuzzElixirTest do
  use ExUnit.Case


  describe "build/1" do

    test "When valid file is provided, should return a list coverted of fizzBuzz" do
      valid_file_name = "numbers.txt"
      result = FizzBuzzElixir.build(valid_file_name)
      assert(result == {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzBuzz, :buzz, :buzz, :fizzBuzz]})
    end

    test "When invalid file is provided, should return a message error" do
      invalid_file_name = "invalid.txt"
      result = FizzBuzzElixir.build(invalid_file_name)
      assert(result  == {:error, "Error on reading file, enoent"})
    end
  end
end
