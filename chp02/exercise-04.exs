# • Create a module called MatchstickFactory and a function called boxes/1. The
# function will calculate the number of boxes necessary to accommodate
# some matchsticks. It returns a map with the number of boxes necessary
# for each type of box. The factory has three types of boxes: the big ones
# hold fifty matchsticks, the medium ones hold twenty, and the small ones
# hold five. The boxes can’t have fewer matchstick that they can hold; they
# must be full. The returning map should contain the remaining matchsticks. It should work like this:
# MatchstickFactory.boxes(98)
# # %{big: 1, medium: 2, remaining_matchsticks: 3, small: 1}
# MatchstickFactory.boxes(39)
# # %{big: 0, medium: 1, remaining_matchsticks: 4, small: 3}
# Tip: You’ll need to use the rem/2 and div/2 functions.8 9


defmodule MatchstickFactory do
    @big 50
    @medium 20
    @small 5

    def boxes(matchsticks) do
      big_boxes = div(matchsticks, @big)
      remaining_matchsticks = rem(matchsticks, @big)

      medium_boxes = div(remaining_matchsticks, @medium)
      remaining_matchsticks = rem(remaining_matchsticks, @medium)

      small_boxes = div(remaining_matchsticks, @small)
      remaining_matchsticks = rem(remaining_matchsticks, @small)

      %{
        big: big_boxes,
        medium: medium_boxes,
        small: small_boxes,
        remaining_matchsticks: remaining_matchsticks
      }
    end
end

IO.inspect MatchstickFactory.boxes(98)
IO.inspect MatchstickFactory.boxes(39)