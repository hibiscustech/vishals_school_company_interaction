class Company < ActiveRecord::Base
  belongs_to :industry
  has_many :company_representatives, :users

  validates_presence_of :company_name, :city, :state

end
