class CreateDocs < ActiveRecord::Migration
  def change
    create_table :docs do |t|
      t.integer :adventure_id
      t.string :name
      t.text :history
      t.string :imglink
      t.string :gdoclink
      t.integer :user_id

      t.timestamps
    end
  end
end
