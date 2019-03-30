# In the section Transforming Lists, on page 62, we traveled to a fantasy
# world and enchanted some items. Create a new module called GeneralStore
# where you can create a function that filters based on whether the products
# are magical. You can use the same test data from EnchanterShop:
# GeneralStore.filter_items(GeneralStore.test_data, magic: true)
# # => [%{title: "Healing Potion", price: 60, magic: true},
# # %{title: "Dragon's Spear", price: 100, magic: true}]
# GeneralStore.filter_items(GeneralStore.test_data, magic: false)
# # => [%{title: "Longsword", price: 50, magic: false},
# # %{title: "Rope", price: 10, magic: false}]

defmodule GeneralStore do
  def test_data do
    [
      %{title: "Longsword", price: 50, magic: false},
      %{title: "Healing Potion", price: 60, magic: true},
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Spear", price: 100, magic: true},
    ]
  end

  def filter_items(items, magic: magic?) do
    filter_items(items, magic?, [])
  end

  def filter_items([], magic?, filtered_items), do: filtered_items
  def filter_items([item | rest], magic?, filtered_items) do
    filtered_items = 
      if item.magic == magic? do
        [item | filtered_items]
      else
        filtered_items
      end

    filter_items(rest, magic?, filtered_items)
  end
end