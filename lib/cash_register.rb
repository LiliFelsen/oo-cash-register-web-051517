require 'pry'

class CashRegister

  attr_accessor :total, :discount, :item, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item = []
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times {@item << title }
    self.last_transaction = price * quantity
  end

  def apply_discount
    @total = @total * (100-@discount)/100.to_f
      if discount != 0
        return "After the discount, the total comes to $#{@total.to_i}."
      elsif discount = 0
        return "There is no discount to apply."
      end
  end

  def items
    return @item
  end

  def void_last_transaction
    @total = @total - self.last_transaction
  end

end
