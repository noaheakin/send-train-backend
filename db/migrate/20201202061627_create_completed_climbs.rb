class CreateCompletedClimbs < ActiveRecord::Migration[6.0]
  def change
    create_table :completed_climbs do |t|
      t.integer :user_id
      t.integer :climb_id

      t.timestamps
    end
  end
end
