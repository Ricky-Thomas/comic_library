class VolumeShelve < ActiveRecord::Base
  belongs_to :users
  belongs_to :volumes
end
