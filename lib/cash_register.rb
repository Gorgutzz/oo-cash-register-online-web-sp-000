class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    quantity.times{@items << item}
    @total += price * quantity
  end

  def apply_discount
    if discount > 0
      @amount_taken_off = (price * discount)/100
      @total -= @amount_taken_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end


end
