class IssueShelve < ActiveRecord::Base
  belongs_to :users
  belongs_to :issues
end
