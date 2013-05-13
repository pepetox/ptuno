class ChangeBodyFormatInChapers < ActiveRecord::Migration
  def up
  	change_column :chapters, :body, :text
  end

  def down
  	change_column :chapters, :body, :string
  end
end
