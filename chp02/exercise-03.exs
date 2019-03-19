# • Build an anonymous function that applies a tax of 12% to a given price.
# It should print a message with the new price and tax value. Bind the
# anonymous function to a variable called apply_tax. You should use apply_tax
# with Enum.each/2, like in the following example. Don’t worry about Enum.each/2
# now; you’ll see it in detail in Chapter 5, Using Higher-Order Functions, on
# page 81. You only need to know that Enum.each/2 will execute apply_tax in
# each item of a list.

# Enum.each [12.5, 30.99, 250.49, 18.80], apply_tax
# # Price: 14.0 - Tax: 1.5
# # Price: 34.7088 - Tax: 3.7188
# # Price: 280.5488 - Tax: 30.0588
# # Price: 21.056 - Tax: 2.256

apply_tax = fn price -> 
  tax = price * 0.12
  new_price = price + tax

  IO.puts "Price: #{new_price} - Tax: #{tax}"
end

Enum.each([12.5, 30.99, 250.49, 18.80], apply_tax)