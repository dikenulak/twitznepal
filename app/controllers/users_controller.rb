class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
     @user = User.new(params[:user])
      if @user.save
        session[:user_id] = @user.id
        redirect_to @user , notice: "Thank you for signing up"
      else
          render 'new'
      end
  end

  def show
    @user = User.find_by_id(params[:id])
    @twitz = Twitz.new
    @relationship =  Relationship.where(
      follower_id: current_user,
      followed_id: @user.id
      ).first_or_initialize if current_user
  end
end
