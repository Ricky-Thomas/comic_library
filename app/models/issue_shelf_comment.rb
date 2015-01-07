class IssueShelfComment < ActiveRecord::Base
  belongs_to :users
  belongs_to :issue_shelf
  validates :comment, presence: true
end
