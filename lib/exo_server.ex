defmodule ExoServer do
  @moduledoc """
  Something like `ExoServer`
  """

  @doc """
  Returns the node name
  """
  @spec ping() :: {:pong, atom()}
  def ping do
    {:pong, node()}
  end
end
