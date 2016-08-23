class TransactionsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @account = Account.find(params[:account_id])
    @transaction = Transaction.new
  end

  def create
    @user = User.find(params[:user_id])
    @account = Account.find(params[:account_id])
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      redirect_to account_path(@user, @account)
    else
      redirect_to new_transaction_path
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:transaction_name, :amount_cents)
      .merge(user_id: @user.id, account_id: @account.id,
      current_amount_cents: calculate_current_amount_cents)
  end

  def calculate_current_amount_cents
    Transaction.calculate_current_amount_cents(@user, @account, transaction_name, amount_cents)
  end

  def transaction_name
    params[:transaction][:transaction_name]
  end

  def amount_cents
    params[:transaction][:amount_cents].to_i
  end
end
