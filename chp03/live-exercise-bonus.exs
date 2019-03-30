# Using the exercise 04 script, keep asking user a valid number when they
# provide an invalid one. Tip: Recursion

defmodule Tax do
  def calc(salary) when salary <= 2000, do: 0
  def calc(salary) when salary <= 3000, do: salary * 0.05
  def calc(salary) when salary <= 6000, do: salary * 0.10
  def calc(salary), do: salary * 0.15
end

defmodule TaxIO do
  def run do
    raw = IO.gets("Type your salary, please: ")

    case Float.parse(raw) do
      {salary, "\n"} ->
        tax = Tax.calc(salary)
        net = salary - tax

        IO.puts("Net salary: #{net}, tax: #{tax}")

      _ ->
        IO.puts("Invalid number. Try again.")
        run()
    end
  end
end

TaxIO.run()