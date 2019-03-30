# In the section Adding Boundaries, on page 75, we added a depth restriction
# to limit how many directories deep our module should dive. Now create
# a BreadthNavigator module that has a breadth constraint; it will be the
# maximum number of sibling directories it can navigate.
defmodule Navigator do
  @max_breadth 4

  def navigate(dir) do
    expanded_dir = Path.expand(dir)
    go_through([expanded_dir], 0)
  end

  defp go_through([], _), do: nil
  defp go_through(_, counter) when counter >= @max_breadth, do: nil
  defp go_through([content | rest], counter) do\
    if File.dir?(content) do
      print_and_navigate(content)
      go_through(rest, counter + 1)
    else
      go_through(rest, counter)
    end
  end

  defp print_and_navigate(dir) do
    IO.puts dir
    children_dirs = File.ls!(dir)
    go_through(expand_dirs(children_dirs, dir), 0)
  end

  defp expand_dirs([], _relative_to), do: []
  defp expand_dirs([dir | dirs], relative_to) do
    expanded_dir = Path.expand(dir, relative_to)
    [expanded_dir | expand_dirs(dirs, relative_to)]
  end
end

IO.inspect Navigator.navigate("../..")