class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_parent
  before_filter :authenticate_benef
  private
  
  def authenticate_parent
     if session[:parent_id]
        @authenticated_parent = Parent.find(session[:parent_id])
     else
        @authenticated_parent = nil
     end
  end
  def authenticate_benef
    if session[:benef_id]
        @authenticated_benef = Benefactor.find(session[:benef_id])
     else
        @authenticated_benef = nil
     end
  end

end
