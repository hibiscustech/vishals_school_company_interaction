class School < ActiveRecord::Base

  validates_presence_of :school_name, :city, :state

end

