`cellular` is an assembly-like grammar, where each line contains a
single command made up of:

* an operation (or "op")
* parameters to that op
* storage of the result into a named variable (if supported by the op -
  optional)
* a comment (optional)

## Cellular in 5 minutes:

Here's an example `cellular` program. The comments on the right explain what
each line does.

```nasm
# Comments start with '#' and extend to the end of the line
val 14 > threshold        # Store '14' in named value 'threshold'
add 2 2                   # Arithmetic addition: 2 + 2 = 4
add ^ 7                   # '^' means, "the value of the previous expression"
jump ^ threshold below_threshold.
restart                   # Jump back to the beginning this jump point
                          # This effectively runs an infinite loop

below_threshold.          # Declare a jump point named 'below_threshold.'
  ... more 
  
```

## Constants

We don't have constants. All data is immutable.

## Values

A **value** (declared using the `val` op) is piece of data that has a name. You
can think of it like a constant.

Values must start with a lower-case letter `a-z`, and can contain other
lower-case letters `a-z`, digits `0-9`, or underscores `_`. So, these are all valid value
names:

```nasm
foo
foo_
bar1
baz2
```

And these are invalid value names:

```nasm
_foo        # must start with a lower-case letter
2_bar       # must start with a lower-case letter
Baz         # cannot contain upper-case letters


## Jump points

Jump points are named sections of code, sort of like functions. The main
difference between jump points, and functions you might be familiar with from
other languages, is that jump points don't declare parameters, or accept
arguments. This is because all data (values) in `cellular` are globally
accessible, and immutable, so there can be no unintended side-effects by making
all value accessible by everyone.


Values are immutable, and cannot be changed.

* Values are used to store data
  * 
* Values are scoped.
  * Values are globally accessible (which should be okay, 
  * Values defined inside of a jump point
* Values are immutable. If you try to change what is stored in a value an error
  will be raised.
* Jump points must be unique



# Quick-and-dirty intro


## Expressions


Here is an example program with a single `expression` that adds `2 + 2`,
returning `4`.

```nasm
add 2 2
```


## Variables

If we wanted to store the result of that calculation in a variable called `sum`,
we could do this:

```nasm
add 2 2 > sum
```

We can then use the value stored in `sum` in later expressions, as in this
example program, which returns `(2 + 2) + 7.5 = 11.5`

```nasm
add 2 2 > sum
add sum 7.5
```

You can also avoid using temporary variables if you're going to use the value of
one expression in the very next expression. For example, this program does
exactly the same thing as the previous program.


## Accessing the previous expression's value

```nasm
add 2 2
add ^ 7.5
```

The `^` character indicates the we want to use the previous expression's value
in place of one of the inputs in the next command.

You can even do this:

```nasm
add 2 2
add ^ ^   
add ^ ^
```

Which is equivalent to `(2 + 2) + (4 + 4) + (12 + 12) = 28` because `4` is the
value of the first expression.

You can use the `#` character to indicate a comment. So if I wanted to explain
the previous program with comments, I might write the following:

```nasm
add 2 2   # 2 + 2 = 4
add ^ ^   # 4 + 4 = 8
add ^ ^   # 8 + 8 = 16
```



Example code
op [param1] [param2] > variable
op ...
op ...
jump label

label:
  op ...
  op ...
  return

A cellular program:
- consists of zero or more operations (called 'ops').
- may contain some labels, which define subroutines
A cellular program starts on the first non-blank line encountered in a file.
- A jump 
