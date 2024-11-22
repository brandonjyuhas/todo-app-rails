class UsersController < ApplicationController
  allow_unauthenticated_access

  # redirect to root if signed in
  before_action :redirect_if_signed_in, only: [ :new, :create ]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      start_new_session_for @user
      redirect_to root_url, notice: "Account created successfully"
    else
      render :new
    end
  end

  private

  def redirect_if_signed_in
    redirect_to root_url if authenticated?
  end

  def user_params
    params.require(:user).permit(:email_address, :password)
  end
end
