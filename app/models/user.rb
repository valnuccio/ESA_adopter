class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attr_accessor :remove_main_image

  has_rich_text :content
  has_one_attached :main_image
  


  has_many :rentals
  has_many :pets, through: :rentals
  has_many :my_pets, foreign_key: "user_id", class_name: "Pet"
  

end

