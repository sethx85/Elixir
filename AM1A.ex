IO.puts("AM1A Este es el juego de Piedra, Papel o Tijera, selecciona tu opción:")

jugada_usuario = IO.gets("") |> String.trim() |> String.downcase()

jugadas = ["piedra", "papel", "tijera"]
jugada_cpu = Enum.random(jugadas)
IO.puts("CPU selecciona: #{jugada_cpu}")

case {jugada_usuario, jugada_cpu} do
  {"piedra", "tijera"} -> IO.puts("Jugador Gana")
  {"papel", "piedra"} -> IO.puts("Jugador Gana")
  {"tijera", "papel"} -> IO.puts("Jugador Gana")
  {"piedra", "piedra"} -> IO.puts("Empate")
  {"papel", "papel"} -> IO.puts("Empate")
  {"tijera", "tijera"} -> IO.puts("Empate")
  _ -> IO.puts("CPU Gana.")
end