class UserProfile < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :first_name, :last_name, :city, :state, :email_address
end
