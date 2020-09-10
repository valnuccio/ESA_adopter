class ChangeAvailableColumnDefaultInPets < ActiveRecord::Migration[6.0]
  
  def change 
    change_column :pets, :available, :boolean, :default => true
  end
end
