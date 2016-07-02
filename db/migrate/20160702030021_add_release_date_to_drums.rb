class AddReleaseDateToDrums < ActiveRecord::Migration
  def change
    add_column :drums, :release_date, :datetime
  end
end
