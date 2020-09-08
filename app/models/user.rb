class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :rentals
  has_many :pets, through: :rentals
  has_many :my_pets, foreign_key: "user_id", class_name: "Pet"
  

end

