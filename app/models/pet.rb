class Pet < ApplicationRecord

    attr_accessor :remove_main_image

    
    has_one_attached :main_image
    

    
    belongs_to :user

    has_many :rentals
    has_many :users, through: :rentals 
end
