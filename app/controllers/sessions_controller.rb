class SessionsController < ApplicationController
  
  
  def new
  end

  def create
    if params[:name].nil? || params[:name].strip.empty?
      redirect_to new_sessions_path
    else 
      session[:name] = params[:name]
      redirect_to '/'
    end 
  end

  def destroy 
    session.delete :name
    redirect_to  new_sessions_path
  end 

end
