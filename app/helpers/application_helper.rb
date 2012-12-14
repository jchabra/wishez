module ApplicationHelper
   def login_and_logout
    type = params[:type]
    if type == 'parent'
      if @authenticated_parent
        link_to "Logout", logout_path
      else
        link_to "Login", login_path
      end
    else
      if @authenticated_benef
        link_to "Logout", logout_path
      else
        link_to "Login", login_path
      end
    end
  end 

  def user_nav_link
    type = params[:type]
    if type == 'parent'
      if @authenticated_parent
        link_to "Hello, #{@authenticated_parent.first_name}", @authenticated_parent
      else
        #do nothing
      end
    else
      if @authenticated_benef
        link_to "Hello, #{@authenticated_benef.first_name}", @authenticated_benef
      else
        #do nothing
      end
    end
  end


end
