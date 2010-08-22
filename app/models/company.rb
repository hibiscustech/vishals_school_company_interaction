class Company < ActiveRecord::Base
#  belongs_to :industry
#  has_many :company_representatives, :users

  belongs_to :industry
  has_one :company_representative

  validates_presence_of :company_name, :city, :state

end
