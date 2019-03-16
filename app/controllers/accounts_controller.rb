class AccountsController < ApplicationController
  before_action :require_user

  def show
    @user = User.find(params[:user_id])
    @account = Account.find(params[:account_id])
    @transactions = @user.transactions.where(account_id: params[:account_id])
  end
end
