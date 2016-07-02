class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :artist_name
      t.string :artist_band
      t.string :artist_img
      t.string :artist_hero_img
      t.text :artist_bio
      t.string :artist_bio_src
      t.string :kit_specs
      t.string :kit_material
      t.string :kit_finish
      t.string :kit_img
      t.string :social_inst
      t.string :social_fb
      t.string :social_twit

      t.timestamps null: false
    end
  end
end
