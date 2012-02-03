class CreateAppointments < ActiveRecord::Migration
  def self.up
    create_table :appointments do |t|
      t.integer :accident_id
      t.date :date
      t.datetime :time
      t.string :location_name
      t.integer :type_of_reminder_id
      t.integer :manager_id
      t.text :notes
      t.timestamps
    end
  end

  def self.down
    drop_table :appointments
  end
end
