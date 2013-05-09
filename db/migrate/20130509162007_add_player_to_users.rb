class AddPlayerToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :player, :boolean, :default => true
  end

  def self.down
    remove_column :users, :player
  end
end