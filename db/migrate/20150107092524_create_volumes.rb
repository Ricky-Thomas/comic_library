class CreateVolumes < ActiveRecord::Migration
  def change
    create_table :volumes do |t|
      t.string :name
      t.string :image
      t.text   :deck
      t.string :thumb
      t.string :start_year
      t.references :user
      t.timestamps
    end
  end
end
