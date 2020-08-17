require 'rubterm'

Rubterm.goto(10,10)

loop do

  Rubterm.clear_screen
  
  print Rubterm.bold_color(:yellow)

  Rubterm.draw("C")

  print Rubterm.reset

  sleep 0.4

  print Rubterm.bold_color(:yellow)

  Rubterm.draw("c")

  print Rubterm.reset
  
  sleep 0.4

end
