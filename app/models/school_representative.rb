class Representative < ActiveRecord::Base
  belongs_to :school, :user 
end
