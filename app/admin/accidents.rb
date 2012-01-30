ActiveAdmin.register Accident, :as => "Accident Reports" do
   scope :IAH
   scope :EWR
   scope :PHX
   scope :IAH_A_F
   scope :IAH_SHOP
   scope :filestatus_open
   index do
          column :date_of_injury
          column :employee_name do |emp|
            link_to emp.employee_name, admin_accident_report_path(emp)
          end
          column :location
          column :employee_job
          column :type_of_incident
          column :monies_paid_
          column :drug_screen
          column :lost_time_
          column :file_status
          column :notes

    end   
end
