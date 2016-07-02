class Drum < ActiveRecord::Base
  default_scope {order(:release_date => :desc)}
end
