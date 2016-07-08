class Drum < ActiveRecord::Base
  default_scope {order(:release_date => :desc)}
  mount_uploader :photo, PhotoUploader
end
