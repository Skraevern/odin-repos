# Byebug can act as a pry replacement or as a gdb-like debugger for Ruby.

# If you want to use it for the former then you just drop byebug instead of binding.pry where you want your code to stop. One of the cons of using Byebug over pry is that it doesn't provide syntax highlighting.

# Let's see how you can set breakpoints and debug you code inside byebug!

# Usually you would call the help command, but in this case it is lacking a bit on information:

# ruby debugger

# So you will have to consult the documentation.

# You can see how using the command break and a line number you can set your breakpoints.

# To get a list of breakpoints you can use info breakpoint.

# Once your breakpoints are set, you can move through the program execution using the following commands:

# step (advance one instruction, stepping into method calls)
# next (advance one instruction, doesn't get inside methods)
# continue (run until the end or next breakpoint)
# If you type enter without any command it with just repeat the last one, this is very useful when walking through your code.

