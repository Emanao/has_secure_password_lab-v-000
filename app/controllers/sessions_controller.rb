class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      #redirect_to
    else

    end
  end

  def logout
    reset_session
    redirect_to login_path
  end
end
