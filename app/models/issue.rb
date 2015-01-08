class Issue < ActiveRecord::Base
  has_many :issue_shelves
  has_many :users, through: :issue_shelves
  validates :name, presence: true
end
