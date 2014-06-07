class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.date :date
      t.string :start_time
      t.string :end_time
      t.boolean :available
      t.integer :counselor_id

      t.timestamps
    end
  end
end
