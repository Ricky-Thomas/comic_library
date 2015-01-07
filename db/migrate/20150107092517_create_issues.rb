class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string     :name
      t.text       :deck
      t.string     :cover_image
      t.string     :thumb
      t.string     :cover_date
      t.references :user
      t.timestamps
    end
  end
end
