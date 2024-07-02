defmodule MediaPlayer do
  alias MediaPlayer.Commands

  def start(_, _) do
    run()
    {:ok, self()}
  end

  def run do
    IO.puts("-------------------------------------")
    IO.puts("- ScyllaDB Cloud Elixir Media Player -")
    IO.puts("- Leave a star on the repo -")
    IO.puts("-------------------------------------")
    IO.puts("Here some possibilities")
    IO.puts(" !add - add new song")
    IO.puts(" !list - list all songs")
    IO.puts(" !delete - delete a specific song")
    IO.puts(" !stress - stress testing with mocked data")
    IO.puts("-------------------------------------")

    loop()
  end

  def loop do
    IO.puts("-------------------------------------")
    IO.puts("Type any command: ")
    command = IO.gets("") |> String.trim()

    case command do
      "!add" ->
        Commands.add()
        loop()

      "!list" ->
        Commands.list()
        loop()

      "!delete" ->
        Commands.delete()
        loop()

      "!stress" ->
        Commands.stress()
        loop()

      "exit" ->
        IO.puts("Bye bye!")
        :OK

      _ ->
        IO.puts("Command not found!")
        loop()
    end
  end
end
