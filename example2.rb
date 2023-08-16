# Receive two integer numbers and return their sum, subtraction, multiplication, and division
puts 'Basic arithmetic operations with integer numbers.'
print 'First Number: '
number1 = gets.chomp.to_i
print 'Second Number: '
number2 = gets.chomp.to_i
sumNumbers = number1 + number2
subtractionNumbers = number1 - number2
multiplicationNumbers = number1 * number2
divisionNumbers = number1 / number2
puts "The sum of the two numbers is: #{sumNumbers}"
puts "The subtraction of the two numbers is: #{subtractionNumbers}"
puts "The multiplication of the two numbers is: #{multiplicationNumbers}"
puts "The division of the two numbers is: #{divisionNumbers}"