class TwitzsController < ApplicationController
    def index
      @twitzs = Twitz.all
      @twitz = Twitz.new
    end

    def create
      twitz= Twitz.new(params[:twitz])
      twitz.user_id = current_user.id

      flash[:error] = "Your twitz was over 140 characters " unless twitz.save
      redirect_to root_url
    end

end
