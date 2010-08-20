class User < ActiveRecord::Base
  has_many :school_representatives, :company_representatives
  belongs_to :school, :company

end
