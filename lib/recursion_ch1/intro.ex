defmodule RecursiveProgramming.RecursionCh1 do
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
  defp do_fib(2), do: 2
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

  def sum(n) when is_integer(n) and n > 0, do: do_sum(n, 1)
  def sum(_), do: nil
  defp do_sum(1, acc), do: acc
  defp do_sum(n, acc), do: do_sum(n - 1, n + acc)
end
