class AddImglinkToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :imglink, :string
  end
   def self.down
    remove_column :characters, :imglink
  end

end
