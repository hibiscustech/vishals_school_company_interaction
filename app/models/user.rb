class User < ActiveRecord::Base
  has_one :user_profile, :school_representative, :company_representative



end
