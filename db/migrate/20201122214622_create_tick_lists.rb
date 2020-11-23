class CreateTickLists < ActiveRecord::Migration[6.0]
  def change
    create_table :tick_lists do |t|
      t.integer :user_id
      t.integer :target_climb_id
      t.string :name
      t.string :area
      t.string :description

      t.timestamps
    end
  end
end
