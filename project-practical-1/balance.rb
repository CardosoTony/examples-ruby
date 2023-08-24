class Balance
   def self.calc_display_total(products)
      total = products.map { |product| product.price }.sum

      puts '=' * 22
      puts "Total:#{'-' * 10}$#{total.round(2)}"
      puts ''
   end
end