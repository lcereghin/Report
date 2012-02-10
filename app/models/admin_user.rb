class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role
  #/app/models/admin_user.rb
      after_create { |admin| admin.send_reset_password_instructions }
      def password_required?
        new_record? ? false : super
      end
      ROLES = %w[Admin Manager]
      
      def roles=(roles)
         self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.sum
       end

       def roles
         ROLES.reject do |r|
           ((roles_mask || 0) & 2**ROLES.index(r)).zero?
         end
       end

       def is?(role)
          roles.include?(role.to_s)
        end


      def get_user
          @current_user = current_user
      end
 
end
