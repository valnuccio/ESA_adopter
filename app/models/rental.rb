class Rental < ApplicationRecord
        belongs_to :user
        belongs_to :pet

        validates :user_id, uniqueness: true

end
