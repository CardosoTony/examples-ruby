def binary_search(list, item)
   low = 0
   high = list.length - 1
   try = 0

   while low <= high
      mid = (low + high) / 2
      mid = mid.to_i
      try += 1
      puts "tentativa #{try}."

      middle = list[mid]

      if middle == item
         return mid
      elsif middle > item
         high = mid - 1
      else
         low = mid + 1
      end
   end

   return nil
end

print 'Digite o valor (range) máximo da lista: '
max_value = gets.chomp.to_i

print 'Digite o valor do passo da lista: '
step_value = gets.chomp.to_i

dynamic_list = (1..max_value).step(step_value).to_a

print 'Deseja imprimir a lista? Y/n: '
print_list = gets.chomp.downcase

system('clear')

case print_list
when 'yes', 'y'
   puts "Lista criada:\n#{dynamic_list.inspect}"
   puts "A lista possui #{dynamic_list.length} posições."
else
   nil
end

print 'Digite o valor que deseja encontrar: '
search_item = gets.chomp.to_i

result = binary_search(dynamic_list, search_item)

if result
   puts "Seu número é o #{search_item} e está na posição #{result}."
else
   puts "O número #{search_item} não foi encontrado na lista."
end