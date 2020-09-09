class Pet < ApplicationRecord

    attr_accessor :remove_main_image

    has_rich_text :content
    has_one_attached :main_image
    has_many_attached :other_images

    
    belongs_to :user

    has_many :rentals
    has_many :users, through: :rentals 
end
