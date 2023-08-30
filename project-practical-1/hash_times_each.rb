system('clear')

hash = {}
puts "\nDigitar chave e valor 3 vezes."

3.times do
   print 'Digite uma key: '
   key = gets.chomp

   print 'Digite um value: '
   value = gets.chomp

   hash[key] = value
   puts 'Inserido com sucesso!'
   puts ''
end

hash.each do |key, value|
   puts "Key: #{key} | Value: #{value}"
end
puts ''