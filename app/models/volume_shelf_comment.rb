class VolumeShelfComment < ActiveRecord::Base
  belongs_to :users
  belongs_to :volume_shelf
  validates :comment, presence: true
end
