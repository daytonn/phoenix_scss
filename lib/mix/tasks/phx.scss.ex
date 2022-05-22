defmodule Mix.Tasks.Phx.Scss do
  @moduledoc """
  Module responsible for running the sass compiler for stylesheets.
  """
  @cmd :sass
  @src_dir "assets/css/app.scss"
  @dest_dir "priv/static/assets/app.css"
  @success_message "app.css compiled successfully!"
  @args [@src_dir, @dest_dir]

  def run(_) do
    @cmd
    |> Atom.to_string()
    |> System.cmd(@args)
    |> handle_result()
  end

  def config do
    {@cmd, @args}
  end

  defp handle_result({_, 0}), do: IO.inspect(@success_message)
  defp handle_result({message, _}), do: IO.inspect(message)
end
