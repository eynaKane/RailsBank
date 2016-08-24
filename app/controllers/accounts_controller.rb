class AccountsController < ApplicationController

  before_action :require_user

  def show
    @user = User.find(params[:user_id])
    if session[:user_id] == @user.id
      @account = Account.find(params[:account_id])
      @transactions = @user.transactions.where(account_id: params[:account_id])
    else
      flash[:notice] = "You don't have access to that page!"
      redirect_to user_path(session[:user_id])
      return
    end
  end
end
