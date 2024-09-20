defmodule ExoServerTest do
  use ExUnit.Case
  doctest ExoServer

  test "greets the world" do
    assert ExoServer.hello() == :world
  end
end
