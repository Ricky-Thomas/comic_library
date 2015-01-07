class IssueShelf < ActiveRecord::Base
  belongs_to :users
  has_many   :issues_shelf_issues
  has_many   :issue_shelf_comments
end
