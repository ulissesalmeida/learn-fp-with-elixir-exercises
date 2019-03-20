# Create an Elixir script where users can type their salary and see the
# income tax and the net wage. You can use the module from the previous
# exercise, but this script should parse the user input and display a message
# when users type something that is not a valid number.

defmodule Tax do
  def calc(salary) when salary <= 2000, do: 0
  def calc(salary) when salary <= 3000, do: salary * 0.05
  def calc(salary) when salary <= 6000, do: salary * 0.10
  def calc(salary), do: salary * 0.15
end

raw = IO.gets("Type your salary, please: ")

case Float.parse(raw) do
  {salary, "\n"} ->
    tax = Tax.calc(salary)
    net = salary - tax

    IO.puts("Net salary: #{net}, tax: #{tax}")

  _ ->
    IO.puts("Invalid number")
end