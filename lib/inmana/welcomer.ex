defmodule Inmana.Welcomer do

  def welcome(%{"name" => name, "age" => age}) do
    age = String.to_integer(age)

    name
    |> String.trim()
    |> String.downcase()
    |> evaluate(age)
  end

  defp evaluate("banana", 42) do
    {:ok, "You are very special"}
  end

  defp evaluate(name, age) when age >= 18 do
    {:ok, "Welcome #{name}, you can drink"}
  end

  defp evaluate(name, _age) do
    {:error, "Welcome #{name}, you can't drink"}
  end
end
