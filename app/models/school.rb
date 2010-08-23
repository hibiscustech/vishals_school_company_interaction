class School < ActiveRecord::Base
#   has_many :school_representatives, :users

  has_one :school_representative

  validates_presence_of :school_name, :city, :state
end
