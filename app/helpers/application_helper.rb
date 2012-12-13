module ApplicationHelper
   def show_dynamic_links
    if @authenticated_parent
      link_to @authenticated_parent.first_name, logout_path
    else
      link_to "Login", login_path
    end
  end 
end
