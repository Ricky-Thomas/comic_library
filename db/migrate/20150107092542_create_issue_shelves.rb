class CreateIssueShelves < ActiveRecord::Migration
  def change
    create_table :issue_shelves do |t|
      t.belongs_to :user, index: true
      t.belongs_to :issue, index: true
      t.timestamps
    end
  end
end
