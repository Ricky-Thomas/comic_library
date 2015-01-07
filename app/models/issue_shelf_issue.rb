class IssueShelfIssue < ActiveRecord::Base
  belongs_to :issue_shelf
  has_many   :issues
end
