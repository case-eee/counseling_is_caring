class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :session_id
      t.integer :student_id

      t.timestamps
    end
  end
end
