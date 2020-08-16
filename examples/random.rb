require 'rubterm'
require 'rubterm_string'

Rubterm.clear_screen

Rubterm.move(:down,8000)

print "!quit".bold_blue(:r) + " to quit".red(:r)

Rubterm.goto

loop do

  print "Write something".bold_green + ">> ".bold_red(:r) + Rubterm.deco(:bold)

  text = gets

  if text != "!quit\n"

    word = []

    print Rubterm.reset

    text.split("").each do |x|
      word << Rubterm.bold_color([:black,:red,:green,:yellow,:blue,:magenta,:cyan,:white].sample) + x
    end

    puts word.join + Rubterm.reset

  else

    break

  end

end

Rubterm.clear_screen

Rubterm.goto
