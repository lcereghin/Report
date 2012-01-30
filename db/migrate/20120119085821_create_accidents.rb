class CreateAccidents < ActiveRecord::Migration
  def self.up
    create_table :accidents do |t|
      t.string :report_number
      t.date :date_of_injury
      t.string :employee_name
      t.string :location
      t.string :employee_job
      t.string :reported_to_insurance_carrier
      t.string :claim_number
      t.string :monies_paid_
      t.string :type_of_incident
      t.string :time_of_incident
      t.string :supervisor_when_accident_occurred
      t.boolean :drug_screen
      t.boolean :lost_time_
      t.string :days_of_lost_time
      t.string :previous_accidents
      t.string :file_status
      t.text :notes
      t.timestamps
    end
  end

  def self.down
    drop_table :accidents
  end
end
