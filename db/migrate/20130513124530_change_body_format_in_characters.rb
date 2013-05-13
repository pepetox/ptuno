class ChangeBodyFormatInCharacters < ActiveRecord::Migration
  def up
  	change_column :characters, :history, :text
  end

  def down
  	change_column :characters, :history, :string
  end
end
