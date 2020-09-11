class Rental < ApplicationRecord
        belongs_to :user
        belongs_to :pet

        validate :cant_rent_our_pet

        def cant_rent_our_pet
                if self.pet.user_id == self.user_id
                self.errors.add(:user_id, "Can't rent your own pet")
                end

        end

        def cost
            self.rent_length * self.pet.cost 
        end

      

                        



end
