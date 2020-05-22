defmodule PrincessTest do
  use ExUnit.Case
  doctest Princess

  test "greets the world" do
    assert Princess.hello() == :world
  end
end
