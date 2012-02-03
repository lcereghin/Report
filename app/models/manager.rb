class Manager < ActiveRecord::Base
  attr_accessible :name, :email_address
  #belongs_to :appointment
end
