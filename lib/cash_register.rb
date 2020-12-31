class CashRegister
    
    attr_accessor :total, :items, :price, :discount
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []

    end

    def add_item(item, price, quantity = 1)
        self.total += price * quantity
    
    end

    def apply_discount
        if self.discount == 20  
            self.total  -= (self.total * @discount.to_i/100)
            "After the discount, the total comes to $#{self.total}." 
        else 
            "There is no discount to apply."
        end
    end

end


