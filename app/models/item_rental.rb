class ItemRental < ApplicationRecord
    belongs_to :rental
    belongs_to :item

    
end
