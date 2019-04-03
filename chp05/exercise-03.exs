# Create a function that generates the Fibonacci sequence up to a given
# quantity. Use streams to produce it. You’ll need to take a look at the
# Stream.unfold/2 function. Tip: Try to make the recursive version first.

defmodule Fibonacci do
  def of(0), do: [0]
  def of(1), do: [0, 1]
  def of(n) do
    [1, 0]
    |> build(1, n)
    |> Enum.reverse()
  end

  def sof(n) do
    {0, 1}
    |> Stream.unfold(fn {current, next} -> {current, {next, current + next}} end) 
    |> Enum.take(n + 1)
  end

  def build(sequence, count, max) when count == max, do: sequence
  def build(sequence = [last, b_last | _], count, max) do
    build([last + b_last | sequence], count + 1, max)
  end
end

IO.puts "fib0> #{inspect(Fibonacci.sof(0))}"
IO.puts "fib1> #{inspect(Fibonacci.sof(1))}"
IO.puts "fib2> #{inspect(Fibonacci.sof(2))}"
IO.puts "fib3> #{inspect(Fibonacci.sof(3))}"
IO.puts "fib4> #{inspect(Fibonacci.sof(4))}"
IO.puts "fib5> #{inspect(Fibonacci.sof(5))}"
IO.puts "fib6> #{inspect(Fibonacci.sof(6))}"