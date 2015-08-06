# Write your code here.
class CashRegister
  def initialize(optional_discount=0)
    @total=0  
    @optional_discount=optional_discount
    @title=[]
  end
  def discount
    @optional_discount
  end
  def total=(total)
    @total=total
  end
  def total
    @total
  end
  def add_item (title,price,quantity=1)
    @total+=price*quantity
    # @title<<title*quantity
    i=0
    while i<quantity 
    @title<<title
    i+=1
    end
  end
  # require 'pry'
  def apply_discount
    if @optional_discount==0
      return "There is no discount to apply."
    else
      @optional_discount=(@optional_discount.to_f/100.to_f)
      @total=total.to_f*(1.0-@optional_discount.to_f).to_f
      @total=@total.round
      # binding.pry
    return "After the discount, the total comes to $#{@total}."
    end
  end
  def items
    @title
  end
end