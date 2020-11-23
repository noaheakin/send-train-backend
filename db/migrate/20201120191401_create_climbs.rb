class CreateClimbs < ActiveRecord::Migration[6.0]
  def change
    create_table :climbs do |t|
      t.integer :mp_id
      t.string :name

      t.timestamps
    end
  end
end
