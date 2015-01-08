class User < ActiveRecord::Base
  has_secure_password
  has_many :issue_shelves
  has_many :issues, through: :issue_shelves
  validates :username, presence: true, uniqueness: true
end
