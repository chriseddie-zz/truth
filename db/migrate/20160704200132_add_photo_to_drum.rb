class AddPhotoToDrum < ActiveRecord::Migration
  def change
    add_column :drums, :photo, :string
  end
end
