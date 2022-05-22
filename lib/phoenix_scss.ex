defmodule PhoenixSCSS do
  @moduledoc """
  Documentation for `PhoenixScss`.
  """
  @cmd :sass
  @src_dir "assets/css/app.scss"
  @dest_dir "priv/static/assets/app.css"
  @success_message "app.css compiled successfully!"
  @doc """
  Hello world.

  ## Examples

      iex> PhoenixScss.hello()
      :world

  """
  def config(src_dir \\ @src_dir, dest_dir \\ @dest_dir) do
    {
      @cmd,
      [src_dir, dest_dir]
    }
  end

  def exec(src_dir \\ @src_dir, dest_dir \\ @dest_dir) do
    @cmd
    |> Atom.to_string()
    |> System.cmd([src_dir, dest_dir])
    |> handle_result()
  end

  defp handle_result({_, 0}), do: IO.inspect(@success_message)
  defp handle_result({message, _}), do: IO.inspect(message)
end
