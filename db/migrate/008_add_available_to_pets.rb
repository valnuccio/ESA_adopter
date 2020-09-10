class AddAvailableToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :available, :string
  end
end
