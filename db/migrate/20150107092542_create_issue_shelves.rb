class CreateIssueShelves < ActiveRecord::Migration
  def change
    create_table :issue_shelves do |t|
      t.references :user
      t.references :issue
      t.string     :comment
      t.timestamps
    end
  end
end
