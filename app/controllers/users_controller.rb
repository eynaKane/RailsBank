class UsersController < ApplicationController

  before_action :require_user, only: [:show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:user_id])
    if session[:user_id] == @user.id
      @accounts = Account.all
      @transactions = @user.transactions
    else
      flash[:notice] = "You don't have access to that order!"
      redirect_to user_path(session[:user_id])
      return
    end
  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation)
  end
end
