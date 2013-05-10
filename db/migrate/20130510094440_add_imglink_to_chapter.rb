class AddImglinkToChapter < ActiveRecord::Migration
  def change
    add_column :chapters, :imglink, :string
  end
   def self.down
    remove_column :chapters, :imglink
  end
end
