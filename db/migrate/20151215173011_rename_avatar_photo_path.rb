class RenameAvatarPhotoPath < ActiveRecord::Migration
  def change
      rename_column :users, :avatar, :photo_path
  end
end
