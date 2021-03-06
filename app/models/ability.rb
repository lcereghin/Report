class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= AdminUser.new       
      case user.role      
        when "Admin"
          can :manage, :all
        when "Manager"
          #can :manage, AdminUser   
          cannot [:destroy], AdminUser
          can :manage, Appointment
          cannot [:destroy], Appointment
          can :update, AdminUser, :id => user.id
        end
    end
end
