# Given 2 numbers, determine which one is greater. (if -> not allowed)
# (2) [] []
# (4) [] [] [] []

# (4 + 2 = 6) [] [] [] [] {} {}
# (4 - 2 = 2) {} {}


# (6 + 2 = 8) [] [] [] [] {} {} {} {}

# (3) [] [] []
# (1) []
# (3 + 1 = 4) [] [] [] {}
# (3 - 1 = 2) {} {}
# (4 + 2 = 6) [] [] [] {} {} {}

# Tip: abs

max = fn a, b -> 
  (a + b + abs(a - b)) / 2
end