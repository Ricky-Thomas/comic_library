class CreateIssueShelves < ActiveRecord::Migration
  def change
    create_table :issue_shelves do |t|
      t.references :user
      t.references :issue_shelf_issue
      t.timestamps
    end
  end
end
