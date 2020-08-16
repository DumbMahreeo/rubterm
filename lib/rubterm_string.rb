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

class String
    
  ####### begin decos
  
  def self.reset()

    return "\u001b[0m"

  end

  def self.erase()

    return "\u001b[8m"

  end

  def bold(reset=false)

    if reset == :r
      return "\u001b[1m" + self + "\u001b[0m"
    else
      return "\u001b[1m" + self
    end

  end
  
  def faint(reset=false)

    if reset == :r
      return "\u001b[2m" + self + "\u001b[0m"
    else
      return "\u001b[2m" + self
    end

  end

  def italic(reset=false)

    if reset == :r
      return "\u001b[3m" + self + "\u001b[0m"
    else
      return "\u001b[3m" + self
    end

  end

  def underline(reset=false)

    if reset == :r
      return "\u001b[4m" + self + "\u001b[0m"
    else
      return "\u001b[4m" + self
    end

  end

  def double_underline(reset=false)

    if reset == :r
      return "\u001b[21m" + self + "\u001b[0m"
    else
      return "\u001b[21m" + self
    end

  end

  def slow_blink(reset=false)

    if reset == :r
      return "\u001b[5m" + self + "\u001b[0m"
    else
      return "\u001b[5m" + self
    end

  end

  def fast_blink(reset=false)

    if reset == :r
      return "\u001b[6m" + self + "\u001b[0m"
    else
      return "\u001b[6m" + self
    end

  end

  def reversed(reset=false)

    if reset == :r
      return "\u001b[7m" + self + "\u001b[0m"
    else
      return "\u001b[7m" + self
    end

  end

  def striketrough(reset=false)

    if reset == :r
      return "\u001b[9m" + self + "\u001b[0m"
    else
      return "\u001b[9m" + self
    end

  end

  ####### end decos
  
  ####### begin colors
  
  def black(reset=false)

    if reset == :r
      return "\u001b[30m" + self + "\u001b[0m"
    else
      return "\u001b[30m" + self
    end

  end

  def red(reset=false)

    if reset == :r
      return "\u001b[31m" + self + "\u001b[0m"
    else
      return "\u001b[31m" + self
    end

  end

  def green(reset=false)

    if reset == :r
      return "\u001b[32m" + self + "\u001b[0m"
    else
      return "\u001b[32m" + self
    end

  end

  def yellow(reset=false)

    if reset == :r
      return "\u001b[33m" + self + "\u001b[0m"
    else
      return "\u001b[33m" + self
    end

  end

  def blue(reset=false)

    if reset == :r
      return "\u001b[34m" + self + "\u001b[0m"
    else
      return "\u001b[34m" + self
    end

  end

  def magenta(reset=false)

    if reset == :r
      return "\u001b[35m" + self + "\u001b[0m"
    else
      return "\u001b[35m" + self
    end

  end

  def cyan(reset=false)

    if reset == :r
      return "\u001b[36m" + self + "\u001b[0m"
    else
      return "\u001b[36m" + self
    end

  end

  def white(reset=false)

    if reset == :r
      return "\u001b[37m" + self + "\u001b[0m"
    else
      return "\u001b[37m" + self
    end

  end

  ####### end colors
 
  ####### begin bold colors
  
  def bold_black(reset=false)

    if reset == :r
      return "\u001b[30;1m" + self + "\u001b[0m"
    else
      return "\u001b[30;1m" + self
    end

  end

  def bold_red(reset=false)

    if reset == :r
      return "\u001b[31;1m" + self + "\u001b[0m"
    else
      return "\u001b[31;1m" + self
    end

  end

  def bold_green(reset=false)

    if reset == :r
      return "\u001b[32;1m" + self + "\u001b[0m"
    else
      return "\u001b[32;1m" + self
    end

  end

  def bold_yellow(reset=false)

    if reset == :r
      return "\u001b[33;1m" + self + "\u001b[0m"
    else
      return "\u001b[33;1m" + self
    end

  end

  def bold_blue(reset=false)

    if reset == :r
      return "\u001b[34;1m" + self + "\u001b[0m"
    else
      return "\u001b[34;1m" + self
    end

  end

  def bold_magenta(reset=false)

    if reset == :r
      return "\u001b[35;1m" + self + "\u001b[0m"
    else
      return "\u001b[35;1m" + self
    end

  end

  def bold_cyan(reset=false)

    if reset == :r
      return "\u001b[36;1m" + self + "\u001b[0m"
    else
      return "\u001b[36;1m" + self
    end

  end

  def bold_white(reset=false)

    if reset == :r
      return "\u001b[37;1m" + self + "\u001b[0m"
    else
      return "\u001b[37;1m" + self
    end

  end

  ####### end bold colors

  ####### begin backgrounds
  
  def black_background(reset=false)

    if reset == :r
      return "\u001b[40m" + self + "\u001b[0m"
    else
      return "\u001b[40m" + self
    end

  end

  def red_background(reset=false)

    if reset == :r
      return "\u001b[41m" + self + "\u001b[0m"
    else
      return "\u001b[41m" + self
    end

  end

  def green_background(reset=false)

    if reset == :r
      return "\u001b[42m" + self + "\u001b[0m"
    else
      return "\u001b[42m" + self
    end

  end

  def yellow_background(reset=false)

    if reset == :r
      return "\u001b[43m" + self + "\u001b[0m"
    else
      return "\u001b[43m" + self
    end

  end

  def blue_background(reset=false)

    if reset == :r
      return "\u001b[44m" + self + "\u001b[0m"
    else
      return "\u001b[44m" + self
    end

  end

  def magenta_background(reset=false)

    if reset == :r
      return "\u001b[45m" + self + "\u001b[0m"
    else
      return "\u001b[45m" + self
    end

  end

  def cyan_background(reset=false)

    if reset == :r
      return "\u001b[46m" + self + "\u001b[0m"
    else
      return "\u001b[46m" + self
    end

  end

  def white_background(reset=false)

    if reset == :r
      return "\u001b[47m" + self + "\u001b[0m"
    else
      return "\u001b[47m" + self
    end

  end

  ####### end backgrounds

  ####### begin bold backgrounds
  
  def bold_black_background(reset=false)

    if reset == :r
      return "\u001b[40;1m" + self + "\u001b[0m"
    else
      return "\u001b[40;1m" + self
    end

  end

  def bold_red_background(reset=false)

    if reset == :r
      return "\u001b[41;1m" + self + "\u001b[0m"
    else
      return "\u001b[41;1m" + self
    end

  end

  def bold_green_background(reset=false)

    if reset == :r
      return "\u001b[42;1m" + self + "\u001b[0m"
    else
      return "\u001b[42;1m" + self
    end

  end

  def bold_yellow_background(reset=false)

    if reset == :r
      return "\u001b[43;1m" + self + "\u001b[0m"
    else
      return "\u001b[43;1m" + self
    end

  end

  def bold_blue_background(reset=false)

    if reset == :r
      return "\u001b[44;1m" + self + "\u001b[0m"
    else
      return "\u001b[44;1m" + self
    end

  end

  def bold_magenta_background(reset=false)

    if reset == :r
      return "\u001b[45;1m" + self + "\u001b[0m"
    else
      return "\u001b[45;1m" + self
    end

  end

  def bold_cyan_background(reset=false)

    if reset == :r
      return "\u001b[46;1m" + self + "\u001b[0m"
    else
      return "\u001b[46;1m" + self
    end

  end

  def bold_white_background(reset=false)

    if reset == :r
      return "\u001b[47;1m" + self + "\u001b[0m"
    else
      return "\u001b[47;1m" + self
    end

  end

  ####### end bold backgrounds

end

class Rcursor

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
  
end

class Rscreen

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

end
