class AddAttachmentPhotoToCharacters < ActiveRecord::Migration
  def self.up
    change_table :characters do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :characters, :photo
  end
end
