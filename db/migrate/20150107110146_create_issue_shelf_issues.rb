class CreateIssueShelfIssues < ActiveRecord::Migration
  def change
    create_table :issue_shelf_issues do |t|
      t.references :user
      t.references :issue_shelf
      t.references :issue
      t.timestamps
    end
  end
end
