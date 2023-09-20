# Define a lambda que capitaliza o nome e o imprime
lambda_name = lambda do |name|
  names = name.split.map(&:capitalize)
  capitalize_names = names.join(' ')
  puts capitalize_names
end

# Define o método que chama a lambda duas vezes com nomes diferentes
def capitalize_name(lambda)
  print 'Insert name 1: '
  name1 = gets.chomp
  print 'Insert name 2: '
  name2 = gets.chomp

  lambda.call(name1)
  lambda.call(name2)
end

# Chama o método para capitalizar e imprimir os nomes
capitalize_name(lambda_name)
