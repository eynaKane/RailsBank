class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @accounts = Account.all
    @transactions = @user.transactions
  end
end
