defmodule RecursiveProgrammingTest do
  use ExUnit.Case
  doctest RecursiveProgramming

  test "greets the world" do
    assert RecursiveProgramming.hello() == :world
  end
end
