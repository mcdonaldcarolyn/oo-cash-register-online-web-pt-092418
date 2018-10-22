require 'pry'
class CashRegister
  attr_accessor :cash_register, :cash_register_with_discount, :discount, :total, :title, :items, :last_transaction
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = []
  end
  
  def add_item(title, price, quantity = 1)

    quantity.times do 
      @items << title
    end
    amount = (price*quantity)
    @last_transaction = amount
    @total = @total + (amount)
    @total
  end

  def apply_discount
    if @discount == 0 
      "There is no discount to apply."
    else
      @total = @total - (@total*(@discount/100.0))
      @total = @total.to_i
      "After the discount, the total comes to $#{@total}."
    end
  end


  def void_last_transaction
    @total = @total - @last_transaction
    @total
  end
end