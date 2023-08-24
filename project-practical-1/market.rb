class Market
   def initialize(product, price)
      @product = product
      @price = price
   end

   def buy
      puts "#{@product}#{'-' * 10}$#{@price}"
   end
end