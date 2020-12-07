class Rental < ApplicationRecord
        belongs_to :user
        belongs_to :pet
        validate :have_enough

    

        def have_enough
                
               if self.deducted < 0
                        self.errors.add(:wallet, "Cost may not exceed wallet value.")
               end
        end

        def deducted
                self.user.wallet - self.cost
        end


        def cost
                self.rent_length * self.pet.cost 
        end



end
