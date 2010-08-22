class CompanyRepresentative < ActiveRecord::Base
  belongs_to :company, :user
end
