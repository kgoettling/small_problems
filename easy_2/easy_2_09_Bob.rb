name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# Question: What does this print out? Can you explain these results?

# Answer: This prints out:

# BOB
# BOB

# The reason is that the 'save_name' and 'name' variable reference the same location in memory. 
# When String#upcase! is called, it mutates the string that it's called on, so any variable that
# references this string is then changed.