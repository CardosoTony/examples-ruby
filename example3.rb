# Example 1: IF ELSIF ELSE
print 'Enter a number between 1 and 30: '
number = gets.chomp.to_i

if number.between?(1, 10)
   puts 'The number is between 1 and 10'
elsif number.between?(11, 20)
   puts 'The number is between 11 and 20'
else
   puts 'The number is bigger than 20'
end

puts ''
# Example 2: UNLESS --> negative form, similar to "!" do JS
print 'Enter a grade from 0 to 10: '
grade = gets.chomp.to_i

unless grade >= 5
   puts "You didn't pass the exam."
else
   puts 'Congratulations, you passed!.'
end