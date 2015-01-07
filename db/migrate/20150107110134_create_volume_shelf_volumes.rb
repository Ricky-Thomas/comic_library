class CreateVolumeShelfVolumes < ActiveRecord::Migration
  def change
    create_table :volume_shelf_volumes do |t|
      t.references :user
      t.references :volume_shelf
      t.references :volume
      t.timestamps
    end
  end
end
