defmodule Mix.Tasks.Phx.ScssSpec do
  use ESpec

  alias Mix.Tasks.Phx.Scss

  describe "config/0" do
    it "returns a config object which can be used in config" do
      expect(Scss.config()) |> to(eq({:sass, ["assets/css/app.scss", "priv/static/assets/app.css"]}))
    end
  end
end
