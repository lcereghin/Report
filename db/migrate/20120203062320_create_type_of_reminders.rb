class CreateTypeOfReminders < ActiveRecord::Migration
  def self.up
    create_table :type_of_reminders do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :type_of_reminders
  end
end
