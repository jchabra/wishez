class SessionController < ApplicationController
  def new
  end

  def create
    user = Parent.find_by_email(params[:email])
    user = Benefactor.find_by_email(params[:email]) if user.nil?

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
      session[:user_type] = user.class
      redirect_to user
    else 
      render :new 
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
