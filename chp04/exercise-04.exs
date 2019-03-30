# We’ve written a lot of recursive functions, but not all of them are tail
# recursive. Write the tail-recursive versions of Sum.up_to/1 and Math.sum/1.
# Extra challenge: write the tail-recursive version of Sort.merge/2.

defmodule Math do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def sumt([]), do: 0
  def sumt([head | tail]), do: sumt(tail, head)

  defp sumt([], sum), do: sum
  defp sumt([head | tail], sum), do: sumt(tail, head + sum)
end

defmodule Sum do
  def up_to(0), do: 0
  def up_to(n), do: n + up_to(n - 1)

  def up_to_t(0), do: 0
  def up_to_t(n), do: up_to_t(n - 1, n)

  defp up_to_t(0, acc), do: acc
  defp up_to_t(n, acc), do: up_to_t(n - 1, n + acc)
end