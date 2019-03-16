class TransactionsController < ApplicationController
  before_action :require_user

  def new
    @user = User.find(params[:user_id])
    @account = Account.find(params[:account_id])
    @transactions = @user.transactions.where(account_id: @account.id)
    @transaction = Transaction.new
  end

  def create
    @user = User.find(params[:user_id])
    @account = Account.find(params[:account_id])
    @transactions = @user.transactions.where(account_id: @account.id)
    @transaction = Transaction.new(transaction_params)

    if @transaction.save
      redirect_to account_path(@user, @account)
    else
      @transaction[:amount_cents] = params_amount_cents / 100
      render 'new'
    end
  end

  private

  def transaction_params
    {
      user_id: @user.id,
      account_id: @account.id,
      transaction_name: params_transaction_name,
      amount_cents: params_amount_cents,
      current_amount_cents: calculate_current_amount_cents
    }
  end

  def calculate_current_amount_cents
    Transaction.calculate_current_amount_cents(
      @user,
      @account,
      params_transaction_name,
      params_amount_cents
    )
  end

  def params_transaction_name
    params[:transaction][:transaction_name]
  end

  def params_amount_cents
    if params[:transaction][:amount_cents] =~ /\A\d+\.?\d{0,2}\z/
      Float(params[:transaction][:amount_cents]) * 100
    else
      0
    end
  end
end
