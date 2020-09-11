class ChangeWalletColumnInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :wallet, :float, :default => 0
  end
end
