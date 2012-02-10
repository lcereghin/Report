ActiveAdmin.register AdminUser do
  
  menu :if => proc{ can?(:manage, AdminUser) }     
    controller.authorize_resource
  index do
        column :email
        column :current_sign_in_at
        column :last_sign_in_at
        column :sign_in_count
        default_actions
      end 
      #...
       form do |f|
         f.inputs "Admin Details" do
           f.input :email
           f.input :role, :as => :radio, :collection => AdminUser::ROLES
         end
         f.buttons
       end
  
  
end
