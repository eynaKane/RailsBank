class UsersController < ApplicationController
  before_action :require_user, only: %i[edit update show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if valid_signup_email? && @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def update
    @user = User.find(session[:user_id])
    if valid_edit_email? && @user.update(user_params)
      @user.reload
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def show
    @user = User.find(session[:user_id])
    @accounts = Account.all
    @transactions = @user.transactions
  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation)
  end

  def valid_signup_email?
    if User.find_by(email: @user.email)
      @user.errors[:email] << 'Email is invalid or already taken.'
      false
    else
      true
    end
  end

  def valid_edit_email?
    if params[:user][:email] == @user.email
      true
    elsif User.find_by(email: params[:user][:email])
      @user.errors[:email] << 'Email is invalid or already taken.'
      false
    else
      true
    end
  end
end
