defmodule Mix.Tasks.Phx.Scss do
  @moduledoc """
  Task to execute the scss command
  """
  def run(_) do
    PhoenixSCSS.exec()
  end
end
