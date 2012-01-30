# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Accident.delete_all
open("db/datatable.csv") do |countries|
 countries.read.each_line do |country|
   report_number,date_of_injury,employee_name,location,employee_job,reported_to_insurance_carrier,claim_number,monies_paid_,type_of_incident,time_of_incident,supervisor_when_accident_occurred,drug_screen,lost_time_,days_of_lost_time,previous_accidents,file_status,notes = country.chomp.split(",")
   Accident.create!(
   :report_number                        => report_number,
   :date_of_injury                       => Date.parse(date_of_injury, "%d/%m/%Y").to_s(:db),
   :employee_name                        => employee_name,
   :location                             => location,
   :employee_job                         => employee_job,
   :reported_to_insurance_carrier        => reported_to_insurance_carrier,
   :claim_number                         => claim_number,
   :monies_paid_                         => monies_paid_,
   :type_of_incident                     => type_of_incident,
   :time_of_incident                     => time_of_incident,
   :supervisor_when_accident_occurred    => supervisor_when_accident_occurred,
   :drug_screen                => drug_screen,
   :lost_time_                 => lost_time_,
   :days_of_lost_time                    => days_of_lost_time,
   :previous_accidents                   => previous_accidents,
   :file_status                          => file_status,
   :notes                         => notes
   )
 end
 end