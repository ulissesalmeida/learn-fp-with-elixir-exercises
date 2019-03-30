# Write two recursive functions: one that finds the biggest element of a list
# and another that finds the smallest. You should use them like this:
# MyList.max([4, 2, 16, 9, 10])
# # => 16
# MyList.min([4, 2, 16, 9, 10])
# # => 2

defmodule MyList do
  def max_num([]), do: nil
  def max_num([a]), do: a
  def max_num([head | rest]) do
    max_num(rest, head)
  end

  def max_num([], max_num), do: max_num
  def max_num([head | rest], max_num) do
    max_num = if head > max_num, do: head, else: max_num
    max_num(rest, max_num)
  end

  def min_num([]), do: nil
  def min_num([a]), do: a
  def min_num([head | rest]) do
    min_num(rest, head)
  end

  def min_num([], min_num), do: min_num
  def min_num([head | rest], min_num) do
    min_num = if head < min_num, do: head, else: min_num
    min_num(rest, min_num)
  end
end