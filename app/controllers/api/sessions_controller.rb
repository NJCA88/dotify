class Api::SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(
      # params[:user][:username],
      params[:user][:email],

      params[:user][:password]
    )
    p @user
    if @user
      login!(@user)
      render 'api/users/show'
    else
      render json: ['Wrong login information'], status: 422
    end
  end

  def destroy
    @user = current_user
    if @user
      logout!
      render 'api/users/show'
    else
      render json: ['No current user'],  status: 404
    end
  end
end
