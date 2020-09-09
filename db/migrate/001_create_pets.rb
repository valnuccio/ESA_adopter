class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.float :rating
      t.string :bio
      t.string :image
      t.integer :cost

      t.timestamps
    end
  end
end
