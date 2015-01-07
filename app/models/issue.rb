class Issue < ActiveRecord::Base
  belongs_to :user
  belongs_to :issue_shelf_issues
  validates :name, presence: true
end
