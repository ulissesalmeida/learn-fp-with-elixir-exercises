# Create a function that returns Tic-Tac-Toe game winners. You can represent the board with a tuple of nine elements, where each group of three
# items is a row. The return of the function should be a tuple. When we
# have a winner, the first element should be the atom :winner, and the second
# should be the player. When we have no winner, the tuple should contain
# one item that is the atom :no_winner. It should work like this:
# TicTacToe.winner({
#   :x, :o, :x,
#   :o, :x, :o,
#   :o, :o, :x
# })
# {:winner, :x}
#
# TicTacToe.winner({
#   :x, :o, :x,
#   :o, :x, :o,
#   :o, :x, :o
# })
# :no_winner