class AddAttachmentPhotoToChapters < ActiveRecord::Migration
  def self.up
    change_table :chapters do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :chapters, :photo
  end
end
