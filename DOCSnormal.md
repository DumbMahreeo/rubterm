# Preamble

This file explains how to do the following things using the "normal" variation of **rubterm**

- How to manipulate text color using

- How to manipulate the text cursor position

- How to clear the screen 

This file can also be useful for someone who wants to learn about ANSI escape codes, even though they know nothing about Ruby.

### Import

```ruby
require 'rubterm'
```

### Rubterm object

Every function in this library is used by calling it as a method of the `Rubterm` object.

For example that's how you get the reset character:

```ruby
Rubterm.reset # returns the reset character
```

---

# Color manipulation

## Normal colors

Color of the text can be sat using the `color` method.

It takes one argument, the color and returns the ANSI code for that color.

(:reset is default if not given any argument)

| Argument | Returns      |
| -------- | ------------ |
| :black   | "\u001b[30m" |
| :red     | "\u001b[31m" |
| :green   | "\u001b[32m" |
| :yellow  | "\u001b[33m" |
| :blue    | "\u001b[34m" |
| :magenta | "\u001b[35m" |
| :cyan    | "\u001b[36m" |
| :white   | "\u001b[37m" |
| :reset   | "\u001b[0m"  |

So, for example

```ruby
puts "#{Rubterm.color(:green)}this is green text"
```

and

```ruby
text = Rubterm.color(:green) + "this is green text"
puts text
```

will both output some green text

## Bold/bright colors

Some terminal emulators support more than the standard 8 colors.
The other 8 colors are called "bold" or "bright". To use them you can call the `bold_color` method. It works exactly like the `color` method, it takes one argument, the color.
(Again, :reset is default if not given any argument)

| Argument | Returns        |
| -------- | -------------- |
| :black   | "\u001b[30;1m" |
| :red     | "\u001b[31;1m" |
| :green   | "\u001b[32;1m" |
| :yellow  | "\u001b[33;1m" |
| :blue    | "\u001b[34;1m" |
| :magenta | "\u001b[35;1m" |
| :cyan    | "\u001b[36;1m" |
| :white   | "\u001b[37;1m" |
| :reset   | "\u001b[0m"    |

So, for example

```ruby
puts "#{Rubterm.bold_color(:green)}this is bold green text"
```

and

```ruby
text = Rubterm.bold_color(:green) + "this is bold green text"
puts text
```

will both output some bold green text

## Background colors

To set a background color you can use the `background` method. It takes again, one argument which is the color. 
(:reset is default if not given any argument)

| Argument | Returns      |
| -------- | ------------ |
| :black   | "\u001b[40m" |
| :red     | "\u001b[41m" |
| :green   | "\u001b[42m" |
| :yellow  | "\u001b[43m" |
| :blue    | "\u001b[44m" |
| :magenta | "\u001b[45m" |
| :cyan    | "\u001b[46m" |
| :white   | "\u001b[47m" |
| :reset   | "\u001b[0m"  |

So, for example

```ruby
puts "#{Rubterm.background(:green)}this is text with green background"
```

and

```ruby
text = Rubterm.background(:green) + "this is text with green background"
puts text
```

will both output some text with green background

## Bold/bright background

If your terminal supports them, there are the bold/bright version of background colors too, just like the text colors. The name is not totally accurate though, since this time the text in the background might be bold/bright and not the background itself.

The method works exactly like the others we've covered so far, it takes one argument, the color.
(Just like before, :reset is default if not given any argument)

| Argument | Returns        |
| -------- | -------------- |
| :black   | "\u001b[40;1m" |
| :red     | "\u001b[41;1m" |
| :green   | "\u001b[42;1m" |
| :yellow  | "\u001b[43;1m" |
| :blue    | "\u001b[44;1m" |
| :magenta | "\u001b[45;1m" |
| :cyan    | "\u001b[46;1m" |
| :white   | "\u001b[47;1m" |
| :reset   | "\u001b[0m"    |

So, for example

```ruby
puts "#{Rubterm.bold_background(:green)}this is bold text with green background"
```

and

```ruby
text = Rubterm.bold_background(:green) + "this is bold text with green background"
puts text
```

will both output some bold text with green background

## General decorations

General decorations/effects can be applied to the text using the `deco` method.
Just like the other ones, it takes one argument, the type of decoration.

(This time "underline" is default if not given any argument)

| Argument          | Returns      | Explanation                                |
| ----------------- | ------------ | ------------------------------------------ |
| :reset            | "\u001b[0m"  | Resets the effects                         |
| :bold             | "\u001b[1m"  | Makes the text bold                        |
| :faint            | "\u001b[2m"  | Makes the text less bright                 |
| :italic           | "\u001b[3m"  | Makes the text italic                      |
| :underline        | "\u001b[4m"  | Underlines the text                        |
| :double_underline | "\u001b[21m" | Double underlines the text                 |
| :slow_blink       | "\u001b[5m"  | Makes the text blink slowly                |
| :fast_blink       | "\u001b[6m"  | Makes the text blink fast                  |
| :reversed         | "\u001b[7m"  | Reverses the background and the text color |
| :erase            | "\u001b[8m"  | Makes the text invisible                   |
| :striketrough     | "\u001b[9m"  | Makes the text striketrough                |

So, for example

```ruby
puts "#{Rubterm.deco(:striketrough)}this is some striketrough text"
```

and

```ruby
text = Rubterm.deco(:striketrough) + "this is some striketrough text"
puts text
```

will both output some striketrough text

## Reset and erase

| Method | Returns     |
| ------ | ----------- |
| reset  | "\u001b[0m" |
| erease | "\u001b[8m" |

`Rubterm.reset` can be used to reset all styling, while `Rubterm.erase` can be used to make some text invisible.

You may have noticed that reset and erase are already provided by other methods, so why should you use two separate methods for them?

* Code readability

* To not go trough a useless `case` statement

That said, here is how you can use it

this

```ruby
puts "#{Rubterm.color(:blue)}This text is blue #{Rubterm.reset}but this is not"
```

will output a text which is only partially blue.

Also, when you're working with colorized text it's good practice to make every string end with a reset, so you won't risk messing up other parts of your text

```ruby
puts "#{Rubterm.color(:red)}This text is red" # No

puts "#{Rubterm.color(:red)}This text is red#{Rubterm.reset}" # Yes
```

---

# Cursor movement

### Move the cursor

To move the cursor relative to it's current position you can use the `move` method.

The `move` method takes two arguments but only the first one, the direction is required. The second argument is the distance of your movement (aka position), but if not given, it defaults to 1.

The direction can be expressed both in cardinal points ("n", "s", "e", "w") and bidirectional directions ("up", "down", "right", "left"), while the distance/position is just an integer.

| Direction   | Prints               | Returns     |
| ----------- | -------------------- | ----------- |
| :up / :n    | "\u001b[*distance*A" | *direction* |
| :down / :s  | "\u001b[*distance*B" | *direction* |
| :right / :e | "\u001b[*distance*C" | *direction* |
| :left / :w  | "\u001b[*distance*D" | *direction* |

**Note:** In this table *distance* is the second/optional argument and *direction* is the first/required argument

You may also have noticed that this method does not return the ANSI code but prints it directly, that's because I found useless to have the user print it manually. It instead returns the first argument.
This behaviour can been noticed troughout the whole "cursor movement" section.

Here's an example

```ruby
Rubterm.move(:down,10)
```

This will move the cursor down 10 lines and return "down"

### Teleport/goto

The `goto` method takes up a x and y, teleports the cursor directly to those coordinates and returns a hash with "x" and "y".

In case some arguments are not given, both x and y default to 0

| Method        | Prints            | Returns            |
| ------------- | ----------------- | ------------------ |
| goto(*x*,*y*) | "\u001b[*y*;*x*H" | {:x=>*x*, :y=>*y*} |

**Note:** In this table *x* refers to the first argument and *y* refers to the second argument.

For example if I wanted to move my coursor to (10, 10), I could do

```ruby
Rubterm.goto(10, 10)
```

While, If I wanted to move the cursor back to its origin I could do

```ruby
Rubterm.goto(0, 0)
# or
Rubterm.goto
```

### Save/load cursor position

You can save the current cursor position and load it with the `position` method.
The `position` method only takes one optional argument, the mode. If no arguments are given, it defaults to "load".

| Mode  | Prints     | Returns |
| ----- | ---------- | ------- |
| :load | "\u001b[u" | "load"  |
| :save | "\u001b[s" | "save"  |

So, for example

```ruby
Rubterm.position(:save) # Saving my cursor position

Rubterm.position(:load) # Coming back to my saved position
```

---

# Clearing the screen

### Clear the whole screen

The `clear_screen` method lets you clear the whole screen and takes one optional argument, the mode. This method accepts both integer and symbol arguments. If no arguments are given, defaults to 2/:full

| Argument      | Prints      | Returns | Effect                                                       |
| ------------- | ----------- | ------- | ------------------------------------------------------------ |
| 0 / :to_end   | "\u001b[0J" | *mode*  | Clears the screen from the cursor to the end of the screen   |
| 1 / :to_start | "\u001b[1J" | *mode*  | Clears the screen from the cursor to the start of the screen |
| 2 / :full     | "\u001b[2J" | *mode*  | Completely wipes out the screen                              |

So, for example

```ruby
Rubterm.clear(:to_start) # will clear the screen up to the top
```

and

```ruby
Rubterm.clear(:full) # will clear the screen completely

Rubterm.clear # Same
```

### Clear the line

the `clear_line` method works pretty much like the `clear_screen` method, but instead of clearing to/from the start/end of the screen, it clears to/from the start/end of the single line the cursor is on. Again, if no arguments are given it defaults to 2/"full"

| Argument      | Prints      | Returns | Effect                                                     |
| ------------- | ----------- | ------- | ---------------------------------------------------------- |
| 0 / :to_end   | "\u001b[0K" | *mode*  | Clears the screen from the cursor to the end of the line   |
| 1 / :to_start | "\u001b[1K" | *mode*  | Clears the screen from the cursor to the start of the line |
| 2 / :full     | "\u001b[2K" | *mode*  | Completely wipes out the line                              |

---

# Let's make something

With the skills we've acquired so far, let's create a simple animated Pac-Man character

```ruby
require 'rubterm'

loop do

  puts "#{Rubterm.bold_color(:yellow)}C#{Rubterm.reset}"
  Rubterm.move(:up)

  sleep 0.4

  puts "#{Rubterm.bold_color(:yellow)}c#{Rubterm.reset}"
  Rubterm.move(:up)

  sleep 0.4

end
```

This should produce a small animation. You should be able to stop it with ctrl+c.
