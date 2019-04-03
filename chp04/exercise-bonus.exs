# We’ve created a function that sorts the items of a list in ascending order.
# Now create a Sort.descending/1 function that sorts the elements in descending
# order.

defmodule Sort do
  def ascending([]), do: []
  def ascending([a]), do: [a]
  def ascending(list) do
    half_size = div(Enum.count(list), 2)
    {list_a, list_b} = Enum.split(list, half_size)
    merge(
      ascending(list_a),
      ascending(list_b),
      []
    )
  end

  def descending(list) do
    list = ascending(list)
    reverse(list)
  end

  def reverse([]), do: []
  def reverse([head | tail]), do: reverse(tail) ++ [head]

  defp merge([], list_b, merged), do: merged ++ list_b
  defp merge(list_a, [], merged), do: merged ++ list_a 
  defp merge([head_a | tail_a], list_b = [head_b | _], merged) when head_a <= head_b do
    merge(tail_a, list_b, merged ++ [head_a])
  end
  defp merge(list_a = [head_a | _], [head_b | tail_b], merged) when head_a > head_b do
    merge(list_a, tail_b, merged ++ [head_b])
  end
end