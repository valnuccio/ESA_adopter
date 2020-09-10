class ChangeAvailableColumnDefaultInPets < ActiveRecord::Migration[6.0]
  
  def change 
    change_column :pets, :available, :string, :default => "true"
  end
end
