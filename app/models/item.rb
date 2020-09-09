class Item < ApplicationRecord
    has_many :item_rentals

    attr_accessor :remove_main_image

   
    has_one_attached :main_image
    


    
end
