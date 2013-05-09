class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.integer :adventure_id
      t.string :name
      t.string :body

      t.timestamps
    end
  end
end
