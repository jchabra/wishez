module ApplicationHelper
   def login_and_logout
      if @auth_user
        link_to "Logout", logout_path
      else
        link_to "Login", login_path
      end
    end

  def user_nav_link
      if @auth_user
        link_to "Hello, #{@auth_user.first_name}", @auth_user
      else
        #do nothing
      end
  end

  def is_parent?
    @auth_user.class.name == "Parent"
  end

  def is_benefactor?
    @auth_user.class.name == "Benefactor"
  end


end
