defmodule Rocketpay.NumbersTest do
  use ExUnit.Case, async: true

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "when there is a file with given name, resturns the sum of the numbers" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end
    test "when there is no file with given name, resturns an error" do
      response = Numbers.sum_from_file("banana")

      expected_response = {:error, %{message: "invalid file"}}

      assert response == expected_response
    end
  end
end
