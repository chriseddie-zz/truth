class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :content_text, default: ""
      t.string :content_key, default: ""
      t.timestamps null: false
    end
  end
end
