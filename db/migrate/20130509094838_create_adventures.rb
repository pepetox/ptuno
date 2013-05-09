class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.string :name
      t.string :system
      t.text :description
      t.string :mc
      t.boolean :playing

      t.timestamps
    end
  end
end
