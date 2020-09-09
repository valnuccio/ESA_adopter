class CreateItemRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :item_rentals do |t|
      t.integer :item_id
      t.integer :rental_id

      t.timestamps
    end
  end
end
