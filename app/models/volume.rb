class Volume < ActiveRecord::Base
  belongs_to :user
  belongs_to :volume_shelf_volumes
  validates :name, presence: true
end
