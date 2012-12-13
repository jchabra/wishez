class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_parent
  private
  
  def authenticate_parent
     if session[:id]
        @authenticated_parent = Parent.find(session[:id])
     else
        @authenticated_parent = nil
     end
  end
end
