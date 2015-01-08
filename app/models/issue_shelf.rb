class IssueShelf < ActiveRecord::Base
  belongs_to :user
  belongs_to :issue
  has_many   :issue_shelf_comments
end
