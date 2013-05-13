class ChangeBodyFormatInCharacters < ActiveRecord::Migration
  def up
  	change_column :characters, :body, :text
  end

  def down
  	change_column :characters, :body, :string
  end
end
