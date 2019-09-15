require 'pry'

class CashRegister
 attr_accessor :cart, :total  #returns total and cart. getters.
 attr_reader :discount   #gets the discount
  
  def initialize(discount = nil)
    @discount = discount
    @total = 0 
    @@cart = [] 
  end
  
  def add_item(title, price, quantity = 1)
    
    self.total += quantity * price
    #binding.pry
  #   self.cart << {title: title, price: price, quantity: quantity}
  # binding.pry
   end 
   
   def apply_discount
    if @discount 
      @total += total 
  end
end

















# class CashRegister
# attr_accessor :total, :cart
#   attr_reader :discount

#   def initialize(discount = nil)
#   @total = 0
#   @discount = discount
#   @cart = []

#   end

#   def add_item(title, price, quantity = 1)
#   quantity.times{ @cart << {title: title, price: price, quantity: quantity}}
#   @total += price * quantity
#   end

#   def apply_discount
#   if @discount
#       @total = @total *(100-@discount)/100
#       "After the discount, the total comes to $#{@total}."
#   else
#         "There is no discount to apply."
#   end
#   end

#   def items
#     @cart.map{|items| items[:title]}
#   end

#   def void_last_transaction
#       @total -= @cart.last[:price] * @cart.last[:quantity]
#   end
# end
