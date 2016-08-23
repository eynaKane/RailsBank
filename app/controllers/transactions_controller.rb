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
      render 'new'
      #redirect_to new_transaction_path
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:transaction_name, :amount_cents)
      .merge(user_id: @user.id, account_id: @account.id,
      current_amount_cents: calculate_current_amount_cents(params[:transaction][:amount_cents]))
  end

  def calculate_current_amount_cents(amount)
    if params[:transaction][:transaction_name] == 'withdraw'
      current_balance - amount.to_i
    else
      current_balance + amount.to_i
    end
  end

  def current_balance
    @user.transactions.where(account_id: @account.id).last.current_amount_cents
  end
end
