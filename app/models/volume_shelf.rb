class VolumeShelf < ActiveRecord::Base
  belongs_to :users
  has_many   :volume_shelf_volumes
  has_many   :volume_shelf_comments
end
