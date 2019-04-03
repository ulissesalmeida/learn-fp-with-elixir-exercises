# In this chapter, we created a screw factory that processes metal pieces
# and generates screws. A new requirement has arrived for us: we now need
# to pack them. We can pack 30 screws per package, and it takes 70ms. A screw 
# is packed when the resulting string is "|o---|". Change the ScrewsFactory
# module, adding the simulation of packing screws.

defmodule ScrewsFactory do
  def run(pieces) do
    pieces
    |> Stream.chunk(50)
    |> Stream.flat_map(&add_thread/1)
    |> Stream.chunk(100)
    |> Stream.flat_map(&add_head/1)
    |> Stream.chunk(30)
    |> Stream.flat_map(&add_package/1)
    |> Enum.each(&output/1)
  end

  defp add_thread(pieces) do
    Process.sleep(50)
    Enum.map(pieces, &(&1 <> "--"))
  end

  defp add_head(pieces) do
    Process.sleep(100)
    Enum.map(pieces, &("o" <> &1))
  end

  defp add_package(pieces) do
    Process.sleep(70)
    Enum.map(pieces, &("|#{&1}|"))
  end

  defp output(screw) do
    IO.inspect(screw)
  end
end

metal_pieces = Enum.take(Stream.cycle(["-"]), 1000)
ScrewsFactory.run(metal_pieces)