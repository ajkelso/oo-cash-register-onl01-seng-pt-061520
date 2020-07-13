require 'pry'
class CashRegister
    attr_accessor :discount, :total
    

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []

    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
        quantity.times {@items << title}
        @last_item = price *= quantity
    
    end

    def apply_discount
        if @discount > 0
            "After the discount, the total comes to $#{(@total = @total * (100 - discount) * 0.01).to_i}."
        else
            "There is no discount to apply."
        end

    end

    def items
        @items
    end

    def void_last_transaction
        @total = @total - @last_item
      

    end



end
