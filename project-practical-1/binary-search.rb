def binary_search(list, item)
   low = 0
   high = list.length - 1

   while low <= high
      mid = (low + high) / 2
      mid = mid.to_i

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

print 'Digite o valor máximo da lista: '
max_value = gets.chomp.to_i

dynamic_list = (1..max_value).step(2).to_a

# Imprimir a lista
puts "Lista criada: #{dynamic_list.inspect}"

print 'Digite o valor que deseja encontrar: '
search_item = gets.chomp.to_i

result = binary_search(dynamic_list, search_item)

if result
   puts "O número #{search_item} está na posição #{result}."
else
   puts "O número #{search_item} não foi encontrado na lista."
end