# In RPGs, players have points to spend on their character attributes. Create
# a function that returns the total number of points players have spent on
# their characters. The function will receive a map containing the strength,
# dexterity, and intelligence values. Each point in strength should be 
# multiplied by two, and dexterity and intelligence should be multiplied by three.

defmodule Character do
  def total_points(%{
      strength: strength, 
      dexterity: dexterity, 
      intelligence: intelligence
    }) do
    strength * 2 + dexterity * 3 + intelligence * 3
  end
end

warrior = %{strength: 5, intelligence: 1, dexterity: 3}
mage = %{strength: 1, intelligence: 5, dexterity: 1}
invalid = %{strength: 5}

IO.inspect(Character.total_points(warrior))
IO.inspect(Character.total_points(mage))
IO.inspect(Character.total_points(invalid))