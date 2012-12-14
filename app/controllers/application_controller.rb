class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate
  private
  
  def authenticate
    if session[:user_id] && session[:user_type] == Parent
      @auth_user = Parent.find(session[:user_id])
    elsif session[:user_id] && session[:user_type] == Benefactor
      @auth_user = Benefactor.find(session[:user_id])
    end
  end
end
