# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
def is_a_admin?
 return true if current_user.account_type=='admin'
end
end
