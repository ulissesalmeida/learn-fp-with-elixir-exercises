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

defmodule TicTacToe do
  def winner({
    j, j, j,
    _, _, _,
    _, _, _
  }) do
    {:winner, j}
  end

  def winner({
    _, _, _,
    j, j, j,
    _, _, _
  }) do
    {:winner, j}
  end

  def winner({
    _, _, _,
    _, _, _,
    j, j, j
  }) do
    {:winner, j}
  end

  def winner({
    j, _, _,
    j, _, _,
    j, _, _
  }) do
    {:winner, j}
  end

  def winner({
    _, j, _,
    _, j, _,
    _, j, _
  }) do
    {:winner, j}
  end

  def winner({
    _, _, j,
    _, _, j,
    _, _, j
  }) do
    {:winner, j}
  end

  def winner({
    _, _, j,
    _, j, _,
    j, _, _
  }) do
    {:winner, j}
  end

  def winner({
    j, _, _,
    _, j, _,
    _, _, j
  }) do
    {:winner, j}
  end

  def winner({
    _, _, _,
    _, _, _,
    _, _, _
  }) do
    :no_winner
  end
end

IO.inspect TicTacToe.winner({
  :x, :o, :x,
  :o, :x, :o,
  :o, :o, :x
})


IO.inspect TicTacToe.winner({
  :x, :o, :x,
  :o, :x, :o,
  :o, :x, :o
})