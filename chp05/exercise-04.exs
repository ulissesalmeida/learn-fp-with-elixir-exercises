# Implement the Quicksort algorithm.5 Tip: You can use the first item of
# the list to be the pivot, and employ the Enum.split_with/2 higher-order function
# Pick an element, called a pivot, from the array.
# Partitioning: reorder the array so that all elements with values less than the pivot come before the pivot, while all elements with values greater than the pivot come after it (equal values can go either way). After this partitioning, the pivot is in its final position. This is called the partition operation.
# Recursively apply the above steps to the sub-array of elements with smaller values and separately to the sub-array of elements with greater values.

defmodule QuickSort do
  def ascending([]), do: []
  def ascending([pivot | tail]) do
    {lessers, greaters} = Enum.split_with(tail, fn item -> item < pivot end)
    ascending(lessers) ++ [pivot] ++ ascending(greaters)
  end
end