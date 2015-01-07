class Volume < ActiveRecord::Base
  belongs_to :user
  has_many :volume_shelves
  validates :name, presence: true
end
