require_relative 'products'
require_relative 'market'
require_relative 'balance'

system('clear')

product = Product.new
print 'Enter the product name: '
product.name = gets.chomp
print 'Enter the product price: '
product.price = gets.chomp.to_f

system('clear')

product1 = Product.new
print 'Enter the product name: '
product1.name = gets.chomp
print 'Enter the product price: '
product1.price = gets.chomp.to_f

system('clear')

product2 = Product.new
print 'Enter the product name: '
product2.name = gets.chomp
print 'Enter the product price: '
product2.price = gets.chomp.to_f

system('clear')

puts '---- Product List ----'
puts '=' * 22

Market.new(product.name, product.price).buy
Market.new(product1.name, product1.price).buy
Market.new(product2.name, product2.price).buy

products = []

products << product
products << product1
products << product2

Balance.calc_display_total(products)