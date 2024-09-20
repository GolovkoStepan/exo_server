defmodule ExoServerTest do
  use ExUnit.Case

  @empty_node_name ~c"elixir -r ./lib/exo_server.ex -e \"IO.inspect ExoServer.ping()\""
  @n1_node_name ~c"elixir --sname n1@localhost -r ./lib/exo_server.ex -e \"IO.inspect ExoServer.ping()\""

  def run_command(command) do
    :os.cmd(command, %{}) |> to_string() |> String.trim()
  end

  test "ping" do
    assert run_command(@empty_node_name) == "{:pong, :nonode@nohost}"
    assert run_command(@n1_node_name) == "{:pong, :n1@localhost}"
  end
end
