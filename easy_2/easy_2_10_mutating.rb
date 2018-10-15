# Question: What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1 = array1.map { |value| value.start_with?('C', 'S') ? value.upcase : value }
puts array2
puts array1

# Answer: This code will print:

# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo

# The reason is that when the values of array1 are added to array2 on line 5, the same references
# to the strings are kept. So, when the references are mutated by the upcase! method on line 6
# the variables (the reference locations within array2 [array2[0], array2[1]... etc.]) will all
# point to the new mutated reference for each string. 

# Question: How can this feature of ruby get you in trouble? How can you avoid it?

# Answer: This can get you in trouble when you need two separate arrays with the same string values,
# but not the same references, for example, if I wanted to maintain an original list of something that is unmodified
# of something, but allow changes to a copy of that list, then any mutations to the copy will modify the original.
# There are multiple ways to avoid this and the best method depends on what you're doing, but one way is to
# use the Object#clone method when assigning a variable to create a copy with new references. Another way is avoiding
# calling any mutating methods and use variable assignment to assign new references when you want to modify a value
# in an array. For example on line 6, instead of calling value.upcase!, you could use the following code instead:

# array1 = array1.map { |value| value.start_with?('C', 'S') ? value.upcase : value }

# This way, we can assign array1 to the output of a new array with new references as opposed to mutating the references
# that is was previously assigned to.