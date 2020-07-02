class Dish < ApplicationRecord
    belongs_to :menu

    private
    def discounted_price
        self.price - self.discount
    end
end
