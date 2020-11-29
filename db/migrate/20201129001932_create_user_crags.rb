class CreateUserCrags < ActiveRecord::Migration[6.0]
  def change
    create_table :user_crags do |t|
      t.integer :user_id
      t.integer :crag_id

      t.timestamps
    end
  end
end
