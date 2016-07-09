class AddSnareToDrums < ActiveRecord::Migration
  def change
    add_column :drums, :snare, :boolean, :default => false
  end
end
