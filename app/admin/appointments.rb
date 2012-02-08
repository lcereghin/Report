ActiveAdmin.register Appointment do
  menu :parent => "Appointments"
  
  index do
         column :accident_id do |emp|
         link_to emp.accident.employee_name, admin_appointment_path(emp)
        end
         column :date
         column :time
         column :location_name
         column :notes
         column :manager
end
end