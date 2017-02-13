class SessionsController < ApplicationController
  def new
  end

  def create
    session[:user_id] = user.id
 end

  def destroy
    session[:user_id] = nil
    redirect_to products_url, notice: "Logged out!"
  end
end
