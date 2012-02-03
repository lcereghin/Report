class Appointment < ActiveRecord::Base
  attr_accessible :accident_id, :date, :time, :location_name, :type_of_reminder_id, :manager_id, :notes
  #belongs_to :accident
  # has_many :type_of_reminders
     belongs_to :manager
     belongs_to :type_of_reminder
     belongs_to :accident
end
