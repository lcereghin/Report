class Accident < ActiveRecord::Base
attr_accessible :report_number, :date_of_injury, :employee_name, :location, :employee_job, :reported_to_insurance_carrier, :claim_number, :monies_paid_, :type_of_incident, :time_of_incident, :supervisor_when_accident_occurred, :drug_screen, :lost_time_, :days_of_lost_time, :previous_accidents, :file_status, :notes
has_many :appointments
scope :IAH, where(:location => "IAH")
scope :EWR, where(:location => "EWR")
scope :PHX, where(:location => "PHX")
scope :IAH_A_F, where(:location => "IAH-A/F")
scope :IAH_SHOP, where(:location => "IAH-SHOP")
scope :filestatus_open, where(:file_status => "Open")
def display_name
   "#{employee_name}"
 end
end
