class CreateIssueShelfComments < ActiveRecord::Migration
  def change
    create_table :issue_shelf_comments do |t|
      t.references :user
      t.references :issue_shelf
      t.text       :comment
      t.timestamps
    end
  end
end
