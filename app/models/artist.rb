class Artist < ActiveRecord::Base
  mount_uploader :artist_img, PhotoUploader
  mount_uploader :artist_hero_img, PhotoUploader
  mount_uploader :kit_img, PhotoUploader
end
