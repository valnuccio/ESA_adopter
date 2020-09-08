class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.float :cost
      t.string :description
      t.float :rating

      t.timestamps
    end
  end
end
