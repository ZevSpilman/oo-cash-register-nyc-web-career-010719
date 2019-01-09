require 'pry'

class CashRegister


attr_accessor :total


def initialize(employee_discount = 0)
  @total = 0
  @employee_discount = employee_discount
  @items = []
end

def discount
@employee_discount
end

def add_item(item, price, quantity = 1)
   @total += price * quantity
   quantity.times do
     @items << item
  end
 @last_transaction = price * quantity
end

def apply_discount
  if @employee_discount != 0
@total -= (@total * (@employee_discount/100.to_f)).to_i
#binding.pry
 "After the discount, the total comes to $#{@total.round}."
   else  "There is no discount to apply."
  end
end

def items
@items
end

def void_last_transaction
@items.pop
#binding.pry
@total -= @last_transaction
end



end
