class AddImglinkToAdventure < ActiveRecord::Migration
  def change
    add_column :adventures, :imglink, :string
  end
   def self.down
    remove_column :adventures, :imglink
  end
end
