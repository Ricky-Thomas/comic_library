class VolumeShelfVolume < ActiveRecord::Base
   belongs_to :volume_shelf
   has_many   :volumes
end
