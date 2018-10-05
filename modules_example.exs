defmodule Alch do
  def hello(stuff) do
    stuff
  end

  def read_my_file(file) do
    File.read(file)
  end
end

defmodule Pmatch do
  def mapping(%{"key"=> value}) do
    IO.puts value
  end
end

# Piping
String.downcase("OLAADMIN,OLAAADMIN,OLAADMIN") 
|> String.strip(",")
|> Enum.uniq
