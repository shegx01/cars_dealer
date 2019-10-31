defmodule RecursiveProgramming.RecursionCh1 do
  import IO,  only: [puts: 1]
  import  Integer, only: [mod: 2]
  # introduction to basic recursion concept
  # starting the lectures
  # sum of nth term recursively defineded
  # if s1 = s2 = 1
  # the sequence is recursively calculated as
  # s1 = 1
  # s2 = 2
  # sn = ?
  # sn = sn-1 + sn-2 case n > 2
  # only positive number
  #
  # turned out to be a fibonacci sequence
  # the sequence received a positiv integer n
  # as an arg and return the nth term in the sequence
  #
  def fib(n) when is_integer(n) and n > 0, do: do_fib(n)
  def fib(arg), do: raise("Expecting integer but found #{inspect(arg)}}")
  defp do_fib(1), do: 1
  defp do_fib(2), do: 1
  defp do_fib(n), do: do_fib(n - 1) + do_fib(n - 2)
  #

  # factorial
  # (n-1)! = 1 * 2 * 3 * 4 ... x(n-1)
  # n! = (n-1)! * n
  # n! = 1 if n==0
  # n! = (n-1)! * n if n > 0

  def factorial(n) when is_integer(n) and n > 0, do: do_fact(n, 1)
  def factorial(_), do: nil
  defp do_fact(0, sum), do: sum
  defp do_fact(n, sum), do: do_fact(n-1, n * sum)

  # computing the sum of a non negative integer
  # S(n) = 1 + 2 + ⋯ + (n − 1) + n.
  # S(n) = 1 if n = 1
  # sn = S(n-1)+n if n > 1

  def sum(n) when is_integer(n) and n > 0, do: do_sum(n, 0)
  def sum(_), do: nil
  defp do_sum(0, acc), do: acc
  defp do_sum(n, acc), do: do_sum(n - 1, n + acc)

@doc """
computing the sum of the digits on a non negative integer
"""
def add_digits(n)when is_integer(n) and n > 0, do: do_add_digit(n)
def add_digits(_), do: nil
defp do_add_digit(n) when n < 10, do: n
defp do_add_digit(n), do: do_add_digit(div(n, 10)) + Integer.mod(n, 10)

@doc """
puts digits reverse vertical
"""
def puts_digits_reverse_vertical(n) when is_integer(n) and n > 0 do
print_reverse_vertical(n)

end
def puts_digits_reverse_vertical(_), do: nil
defp print_reverse_vertical(n) when n < 10 ,do: puts n
defp print_reverse_vertical(n) do
  puts(mod(n, 10))
   print_reverse_vertical(div(n, 10))
end



end
