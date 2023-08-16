# Receive the name and age of a person and, in the end, display the data in a single sentence.
print 'Enter your name: '
name = gets.chomp
print 'Enter your age: '
age = gets.chomp.to_i
puts "Seu nome é #{name} e tem #{age} anos."