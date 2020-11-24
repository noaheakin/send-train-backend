class CreateCrags < ActiveRecord::Migration[6.0]
  def change
    create_table :crags do |t|
      t.string :name
      t.integer :lat
      t.integer :lon
      t.string :location

      t.timestamps
    end
  end
end
