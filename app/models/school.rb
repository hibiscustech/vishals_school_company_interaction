class School < ActiveRecord::Base
   has_many :school_representatives, :users

   validates_presence_of :school_name, :city, :state
end
