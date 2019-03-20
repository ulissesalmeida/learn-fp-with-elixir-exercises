# Create a function that calculates income tax following these rules: a salary
# equal or below $2,000 pays no tax; below or equal to $3,000 pays 5%; below
# or equal to $6,000 pays 10%; everything higher than $6,000 pays 15%.

defmodule Tax do
  def calc(salary) when salary <= 2000, do: 0
  def calc(salary) when salary <= 3000, do: salary * 0.05
  def calc(salary) when salary <= 6000, do: salary * 0.10
  def calc(salary), do: salary * 0.15
end