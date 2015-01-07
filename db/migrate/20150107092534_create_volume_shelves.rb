class CreateVolumeShelves < ActiveRecord::Migration
  def change
    create_table :volume_shelves do |t|
      t.references :user
      t.references :volume_shelf_volume
      t.timestamps
    end
  end
end
