class Issue < ActiveRecord::Base
  belongs_to :user
  has_many :issue_shelves
  validates :name, presence: true
end
