class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      @error = 'Invalid email or password. Please try again.'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
