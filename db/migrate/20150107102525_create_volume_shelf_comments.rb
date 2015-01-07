class CreateVolumeShelfComments < ActiveRecord::Migration
  def change
    create_table :volume_shelf_comments do |t|
      t.references :user
      t.references :volume_shelf
      t.text     :comment
      t.timestamps
    end
  end
end

