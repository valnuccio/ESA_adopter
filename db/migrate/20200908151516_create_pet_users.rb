class CreatePetUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.integer :pet_id
      t.integer :user_id
      t.integer :rent_length
      t.float :pet_rating

      t.timestamps
    end
  end
end
