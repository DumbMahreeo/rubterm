# Preamble

This file explains how to do the following things using
the "string" variation of **rubterm**

- How to manipulate text color using

- How to manipulate the text cursor position

- How to clear the screen

### Import

```ruby
require 'rubterm_string'
```

### Objects

3 main classes are gonna be used by **rubterm_string**

* The now expanded `String` class which has two class methods, `reset` and `erase`, and many instance methods.

* The `Rcursor` object, which can be used to move the cursor across the screen and has three instance methods: `move`, `goto`, and `position`.

* The `Rscreen` object, which right now is only used for clearing the screen and has two instance methods: `clear_screen` and `clear_line`.

---

# Color/deco manipulation

`rubterm_string` works in a slightly different way. To set a color, a bold_color, a background, a bold_background, or a deco/effect you just need to call the it by name as instance method of the `String` class. Those methods only take one optional argument, which is the symbol `:r`. If this argument is given the string will end with a reset character.

Example:

```ruby
some_text = "This bold text is green".bold_green + " and this is bold and green too"
puts some_text # will output some green text


some_text = "This bold text is green".green(:r) + " but this is not"
puts some_text # will output some green text and some normal one
```

Here's a complete list of these methods

| Decorations      | Colors  | Bold Colors  | Backgrounds        | Bold backgrounds        |
| ---------------- | ------- | ------------ | ------------------ | ----------------------- |
| faint            | black   | bold_black   | black_background   | bold_black_background   |
| italic           | red     | bold_red     | red_background     | bold_red_background     |
| underline        | green   | bold_green   | green_background   | bold_green_background   |
| double_underline | yellow  | bold_yellow  | yellow_background  | bold_yellow_background  |
| slow_blink       | magenta | bold_magenta | magenta_background | bold_magenta_background |
| fast_blink       | cyan    | bold_cyan    | cyan_background    | bold_cyan_background    |
| reversed         | white   | bold_white   | white_background   | bold_white_background   |
| striketrough     |         |              |                    |                         |

If you only want the reset or erase characters you can call the `reset` or `erase` methods directly from `String`.

This means that

```ruby
"Some text".bold_green + String.reset
```

is equivalent to

```ruby
"Some text".bold_green(:r)
```

*Note:* It's good practice to end a piece of text with a reset character, to not mess up other parts of your program.
So

```ruby
"Blue text".blue + " green text".green # No


"Blue text".blue + " green text".green(:r) # Yes
```

---

# Cursor movement

To move the cursor you can use the same methods descripted in the ["normal" docs](./DOCSnormal.md) (`move`, `goto`, and `position`) but you will need to call them from the `Rcursor` object.

So, for example if I wanted to move the cursor down by 10 lines, I could do

```ruby
Rcursor.move(:down, 10)
```

---

# Clearing the screen

Just like when moving the cursor, the methods to clear the screen are the same described in the ["normal" docs](./DOCSnormal.md) (`clear_screen` and `clear_line`), but they must be called from the `Rscreen` object.

This means that if I wanted to clear the screen from the top of it, down to the cursor, I would need to do

```ruby
Rscreen.clear(:to_start)
```

---

# Let's make something

With the skills we've acquired so far, let's create a simple animated Pac-Man character

```ruby
require 'rubterm_string'

loop do

  puts "C".bold_yellow(:r)
  Rcursor.move(:up)

  sleep 0.4

  puts "c".bold_yellow(:r)
  Rcursor.move(:up)

  sleep 0.4

end
```

This should produce a small animation. You should be able to stop it with ctrl+c.
