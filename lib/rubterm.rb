#**************************************
#     
#
#     Copyright 2020 Massimiliano Noviello <massi.noviello@gmail.com>
#
#     Use, modification, and distribution of this software
#     are protected by the 
#     GNU LESSER GENERAL PUBLIC LICENSE Version 2.1
#     as known as LGPL-2.1
#
#     The terms of LGPL-2.1 apply
#
#
#**************************************


module Rubterm

  def self.reset()

    return "\u001b[0m"

  end

  def self.erase()

    return "\u001b[8m"

  end

  def self.deco(type=:underline)

    case type

    when :reset
      return "\u001b[0m"

    when :bold
      return "\u001b[1m"

    when :faint
      return "\u001b[2m"

    when :italic
      return "\u001b[3m"

    when :underline
      return "\u001b[4m"

    when :double_underline
      return "\u001b[21m"

    when :slow_blink
      return "\u001b[5m"

    when :fast_blink
      return "\u001b[6m"

    when :reversed
      return "\u001b[7m"

    when :erase
      return "\u001b[8m"

    when :striketrough
      return "\u001b[9m"

    else
      return false

    end

  end

  def self.color(color=:reset)

    case color

    when :black
      return "\u001b[30m"

    when :red
      return "\u001b[31m"

    when :green
      return "\u001b[32m"

    when :yellow
      return "\u001b[33m"

    when :blue
      return "\u001b[34m"

    when :magenta
      return "\u001b[35m"

    when :cyan
      return "\u001b[36m"

    when :white
      return "\u001b[37m"

    when :reset
      return "\u001b[0m"

    else
      return false

    end

  end

  def self.bold_color(color=:reset)

    case color

    when :black
      return "\u001b[30;1m"

    when :red
      return "\u001b[31;1m"

    when :green
      return "\u001b[32;1m"

    when :yellow
      return "\u001b[33;1m"

    when :blue
      return "\u001b[34;1m"

    when :magenta
      return "\u001b[35;1m"

    when :cyan
      return "\u001b[36;1m"

    when :white
      return "\u001b[37;1m"

    when :reset
      return "\u001b[0m"

    else
      return false

    end

  end

  def self.background(color=:reset)

    case color

    when :black
      return "\u001b[40m"

    when :red
      return "\u001b[41m"

    when :green
      return "\u001b[42m"

    when :yellow
      return "\u001b[43m"

    when :blue
      return "\u001b[44m"

    when :magenta
      return "\u001b[45m"

    when :cyan
      return "\u001b[46m"

    when :white
      return "\u001b[47m"

    when :reset
      return "\u001b[0m"

    else
      return false

    end

  end

  def self.bold_background(color=:reset)

    case color

    when :black
      return "\u001b[40;1m"

    when :red
      return "\u001b[41;1m"

    when :green
      return "\u001b[42;1m"

    when :yellow
      return "\u001b[43;1m"

    when :blue
      return "\u001b[44;1m"

    when :magenta
      return "\u001b[45;1m"

    when :cyan
      return "\u001b[46;1m"

    when :white
      return "\u001b[47;1m"

    when :reset
      return "\u001b[0m"

    else
      return false

    end

  end

  def self.position(mode=:load)

    case mode

    when :load
      print "\u001b[u"
      return mode

    when :save
      print "\u001b[s"
      return mode

    else
      return false

    end
    
  end

  def self.goto(x=0, y=0)

    print "\u001b[#{y};#{x}H"
    return {:x=>x, :y=>y}

  end

  def self.move(dir, pos=1)

    case dir

    when :n, :up
      print "\u001b[#{pos}A"
      return dir

    when :s, :down
      print "\u001b[#{pos}B"
      return dir

    when :e, :right
      print "\u001b[#{pos}C"
      return dir

    when :w, :left
      print "\u001b[#{pos}D"
      return dir

    else
      return false 

    end

  end

  def self.clear_screen(mode=2)

    case mode

    when 0, :to_end
      print "\u001b[0J"
      return mode

    when 1, :to_start
      print "\u001b[1J"
      return mode

    when 2, :full
      print "\u001b[2J"
      return mode

    else
      return false

    end

  end

  def self.clear_line(mode=2)

    case mode

    when 0, :to_end
      print "\u001b[0K"
      return mode

    when 1, :to_start
      print "\u001b[1K"
      return mode

    when 2, :full
      print "\u001b[2K"
      return mode

    else
      return false

    end

  end

  def self.draw(text)    
        
    counter = 0    
    print "\u001b[s"    
      
    text.split("").each do |x|    
      
      x = " " if x == "\n" or x == "\r"    
      
      print x if counter == 0    
      
      
      if counter != 0    
      
        print "\u001b[#{counter}C"    
      
        print x    
      
      end    
      
      print "\u001b[u"    
      
      counter+=1    
      
    end    
      
    print "\u001b[u"    

  end

end
