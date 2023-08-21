IO.puts("AM1A Este es el juego de Piedra, Papel o Tijera, selecciona tu opción:")

jugada_usuario = IO.gets("") |> String.trim() |> String.downcase()

jugadas = ["piedra", "papel", "tijera"]
jugada_cpu = Enum.random(jugadas)
IO.puts("CPU selecciona: #{jugada_cpu}")

cond do
  (jugada_usuario == "piedra" && jugada_cpu == "tijera") -> IO.puts("Jugador Gana")
  (jugada_usuario == "papel" && jugada_cpu == "piedra") -> IO.puts("Jugador Gana")
  (jugada_usuario == "tijera" && jugada_cpu == "papel") -> IO.puts("Jugador Gana")
  (jugada_usuario == jugada_cpu) -> IO.puts("Empate")
  true -> IO.puts("CPU Gana.")
end