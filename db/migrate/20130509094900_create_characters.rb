class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :adventure_id
      t.string :name
      t.string :history
      t.boolean :pj
      t.boolean :alive
      t.integer :user_id

      t.timestamps
    end
  end
end
