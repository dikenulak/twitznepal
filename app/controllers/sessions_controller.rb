class SessionsController < ApplicationController
  def create
    user = User.find_by_email params[:email]
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to current_user, notice: "Logged In!."
    else
        flash[:error] = "Wrong username and password."
        redirect_to root_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out."
  end
end
