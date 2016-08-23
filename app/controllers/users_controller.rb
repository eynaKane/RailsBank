class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @transactions = @user.transactions
    @accounts = @transactions.map(&:account).uniq
  end

end
