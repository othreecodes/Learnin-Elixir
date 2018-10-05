# "bread"

hints = "flour, water, yeast, bakery"

IO.puts "Hints:  #{hints}"

guess = IO.gets "Guess the word: "

IO.inspect String.trim(guess)

case guess do
  "bread" ->
    IO.puts("wom")
  _->
  IO.puts("lost")
end
