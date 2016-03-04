class CreateHunts < ActiveRecord::Migration
  def change
    create_table :hunts do |t|
      t.integer :user_id
      t.integer :ticket_id

      t.timestamps null: false
    end
  end
end
