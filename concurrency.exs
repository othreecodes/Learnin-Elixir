defmodule Rectangle do
  def area_loop do
    receive do
      {:area, w, h}->
        IO.puts "Area = #{w*h}"
        area_loop()
      {:perimeter, w,h} ->
        IO.puts "Perimeter = #{w+h}"
        area_loop()
      end
  end
end

# c("concurrency.exs")
# a = spawn( fn -> Rectangle.area_loop() end)
# send a, {:perimeter, 35, 50}
