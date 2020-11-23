class CreateTargetClimbs < ActiveRecord::Migration[6.0]
  def change
    create_table :target_climbs do |t|
      t.integer :tick_list_id
      t.integer :climb_id

      t.timestamps
    end
  end
end
