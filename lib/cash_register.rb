class CashRegister

  attr_accessor :total
  attr_reader :discount

  def initialize(discount=0)
    @total = 0.0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    @total += (price * quantity)
    i = 0
    while i < quantity
      @items << item
      i += 1
    end
  end

  def apply_discount
    if @discount > 0
    @total *= (100.0 - @discount)/100.0
    "After the discount, the total comes to $#{@total.floor}."
  else
    "There is no discount to apply."
  end
end

def items
  @items
end

def void_last_transaction
  @total = 0
end

end
